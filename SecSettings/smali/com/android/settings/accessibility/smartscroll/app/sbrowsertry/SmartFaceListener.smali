.class public Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;
.super Ljava/lang/Object;
.source "SmartFaceListener.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCheckFirstShaking:Z

.field private mContext:Landroid/content/Context;

.field private mDoScrollMove:Z

.field private mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field private mProgressStatus:I

.field private mSmartScrollDirection:I

.field private mSmartScrollOn:Z

.field private mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

.field private mSmartScrollSpeed:I

.field private mSmartScrollSpeedFastX:I

.field private mSmartScrollSpeedFastY:I

.field private mSmartScrollSpeedNormalX:I

.field private mSmartScrollSpeedNormalY:I

.field protected mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TrySmartFaceListener"

    sput-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedNormalX:I

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedFastX:I

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedNormalY:I

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedFastY:I

    iput v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollDirection:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeed:I

    iput v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mProgressStatus:I

    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollOn:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mCheckFirstShaking:Z

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mDoScrollMove:Z

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener$2;-><init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iput-object p2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->checkSmartScrollStatus(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->checkSmartScrollDirection(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->getSmartScrollSpeed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->doSmartScroll()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mProgressStatus:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkSmartScrollDirection(II)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedFastY:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedNormalY:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedNormalY:I

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedFastY:I

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    packed-switch p1, :pswitch_data_1

    :pswitch_5
    goto :goto_0

    :pswitch_6
    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedFastX:I

    invoke-direct {p0, v4, v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_7
    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedNormalX:I

    invoke-direct {p0, v4, v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_8
    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedNormalX:I

    invoke-direct {p0, v5, v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :pswitch_9
    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedFastX:I

    invoke-direct {p0, v5, v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->handleSmartScrolling(II)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mDoScrollMove:Z

    iput v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollDirection:I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private checkSmartScrollStatus(II)Z
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    iget v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mProgressStatus:I

    if-ne v2, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mCheckFirstShaking:Z

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollDirection:I

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v2, v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mDoScrollMove:Z

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mProgressStatus:I

    goto :goto_0

    :cond_4
    if-nez p1, :cond_8

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mCheckFirstShaking:Z

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v2, v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mDoScrollMove:Z

    :cond_6
    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mProgressStatus:I

    goto :goto_0

    :cond_8
    const/4 v2, 0x3

    if-ne p1, v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v2, v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_9
    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mDoScrollMove:Z

    :cond_a
    iget-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mCheckFirstShaking:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mCheckFirstShaking:Z

    :cond_b
    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mProgressStatus:I

    goto/16 :goto_0

    :cond_c
    if-ne p1, v1, :cond_10

    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mCheckFirstShaking:Z

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mProgressStatus:I

    if-ne v0, p1, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mProgressStatus:I

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v2, "TRACKING - onSmartScrollReady"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->smartScrollReady()V

    :cond_f
    move v0, v1

    goto/16 :goto_0

    :cond_10
    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mProgressStatus:I

    goto/16 :goto_0
.end method

.method private declared-synchronized doSmartScroll()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeed:I

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollDirection:I

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    mul-int/lit8 v1, v2, -0x1

    sget-object v3, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSmartScroll : SMART_SCROLL_UP - offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

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
    sget-object v3, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSmartScroll : SMART_SCROLL_DOWN - offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v3, v1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->smartScrollBy(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSmartScrollSpeed()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeedNormalY:I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeed:I

    :cond_0
    return-void
.end method

.method private handleSmartScrolling(II)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollDirection:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeed:I

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollDirection:I

    iput p2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSpeed:I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setInitVSync()V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mDoScrollMove:Z

    goto :goto_0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollOn:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->getSmartScrollSpeed()V

    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    const-string v1, "init: mFaceManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    new-instance v1, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener$1;-><init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/smartface/SmartFaceManager;->setListener(Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    goto :goto_0
.end method


# virtual methods
.method public delayResumeSmartScroll()V
    .locals 4

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public doSmartScrollStop()V
    .locals 5

    const-wide/16 v3, 0x10

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollDirection:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isEnableFaceView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

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

.method public pauseSmartScroll()V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->isEnableFaceView()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseSmartScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFaceManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollOn:Z

    iput-boolean v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mDoScrollMove:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iput v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollDirection:I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->pause()V

    :cond_3
    return-void
.end method

.method public resumeSmartScroll()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->isEnableFaceView()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeSmartScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFaceManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollOn:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->resume()V

    :cond_1
    return-void
.end method

.method public setStartSmartScroll()V
    .locals 3

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOTION - setStartSmartScroll : mDoScrollMove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mDoScrollMove:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mDoScrollMove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public startSmartScroll()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->isEnableFaceView()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmartScroll- this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->init()V

    iput-boolean v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollOn:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)Z

    :cond_0
    return-void
.end method

.method public stopSmartScroll()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->isEnableFaceView()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSmartScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mVScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setEnableVSync(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0, v6}, Lcom/sec/android/smartface/SmartFaceManager;->setListener(Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    iput-object v6, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartFaceListener;->mSmartScrollOn:Z

    :cond_4
    return-void
.end method
