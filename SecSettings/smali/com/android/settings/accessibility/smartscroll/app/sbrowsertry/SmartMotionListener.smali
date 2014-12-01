.class public Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;
.super Ljava/lang/Object;
.source "SmartMotionListener.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mCheckFaceDetected:Z

.field private mCheckSendResetEvent:Z

.field private mCheckStartMotionListener:Z

.field private mContext:Landroid/content/Context;

.field private mDoScrollMove:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field private mSmartScrollDirection:I

.field private mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

.field private mSmartScrollSpeed:I

.field private mSmartScrollSpeedNormalY:I

.field protected mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TrySmartMotionListener"

    sput-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeedNormalY:I

    iput v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollDirection:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeed:I

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckFaceDetected:Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckStartMotionListener:Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckSendResetEvent:Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mDoScrollMove:Z

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$2;-><init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iput-object p2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeedNormalY:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->doSmartMotionScroll()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->handleSmartMotionScrolling(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckStartMotionListener:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckFaceDetected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckFaceDetected:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollDirection:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->getSmartScrollSpeed()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mDoScrollMove:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckSendResetEvent:Z

    return p1
.end method

.method private declared-synchronized doSmartMotionScroll()V
    .locals 6

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeed:I

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollDirection:I

    iget v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollDirection:I

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->isEdgeScrolling(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->setSmartMotionScrollAngle(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    mul-int/lit8 v1, v2, -0x1

    :try_start_1
    sget-object v3, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MOTION - doSmartMotionScroll : SMART_MOTION_SCROLL_UP - offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v3, v1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->smartScrollBy(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :pswitch_1
    move v1, v2

    :try_start_2
    sget-object v3, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MOTION - doSmartMotionScroll : SMART_MOTION_SCROLL_DOWN - offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v3, v1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->smartScrollBy(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSmartScrollSpeed()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeedNormalY:I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeed:I

    :cond_0
    return-void
.end method

.method private handleSmartMotionScrolling(II)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->isEdgeScrolling(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->setSmartMotionScrollAngle(I)V

    :cond_0
    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollDirection:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeed:I

    if-ne v0, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mDoScrollMove:Z

    :cond_2
    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollDirection:I

    iput p2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSpeed:I

    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mDoScrollMove:Z

    goto :goto_0
.end method

.method private init()V
    .locals 2

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    const-string v1, "SmartMotionListener : init entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->getSmartScrollSpeed()V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener$1;-><init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    :cond_0
    return-void
.end method

.method private isEdgeScrolling(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdgeScrolling direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckSendResetEvent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckSendResetEvent:Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckSendResetEvent:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->getMaxScrollContentSize()I

    move-result v3

    if-ne v2, v3, :cond_2

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckSendResetEvent:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public isEnableSmartMotionListener()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->checkSmartScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmartMotionScrollAngle(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->isEnableSmartMotionListener()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartMotionScrollAngle this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mMotionSensorManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/motion/MotionRecognitionManager;->setSmartMotionAngle(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    return-void
.end method

.method public setStartSmartScroll()V
    .locals 3

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOTION - setStartSmartScroll : mDoScrollMove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mDoScrollMove:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mDoScrollMove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized startSmartMotionScroll()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->isEnableSmartMotionListener()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSmartMotionScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMotionSensorManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setInitVSync()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckStartMotionListener:Z

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->init()V

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_1
    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopSmartMotionScroll()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->isEnableSmartMotionListener()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSmartMotionScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mMotionSensorManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mDoScrollMove:Z

    :cond_1
    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_2
    sput-object v4, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v4, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    if-eqz v0, :cond_3

    iput-object v4, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckFaceDetected:Z

    iput-boolean v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartMotionListener;->mCheckStartMotionListener:Z

    :cond_4
    return-void
.end method
