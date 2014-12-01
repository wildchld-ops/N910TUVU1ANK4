.class public Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;
.super Landroid/widget/RelativeLayout;
.source "SecondScreenIncomingHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$1;,
        Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;
    }
.end annotation


# instance fields
.field private final MAKE_TARGET_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final VIBRATE_LONG:J

.field private final VIBRATE_SHORT:J

.field private mContext:Landroid/content/Context;

.field private mHandleImageView:Landroid/widget/ImageView;

.field private mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

.field private mHandleType:I

.field private mMovingCircle:Landroid/widget/ImageView;

.field private mParentView:Lcom/android/incallui/cocktail/SecondScreenPanelView;

.field private mTabCircle:Landroid/widget/ImageView;

.field private mTargetCircle:Landroid/widget/ImageView;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "SecondScreenIncomingHandle"

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->VIBRATE_LONG:J

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->MAKE_TARGET_DURATION:I

    iput-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mParentView:Lcom/android/incallui/cocktail/SecondScreenPanelView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    sget-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object p1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "SecondScreenIncomingHandle"

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->VIBRATE_LONG:J

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->MAKE_TARGET_DURATION:I

    iput-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mParentView:Lcom/android/incallui/cocktail/SecondScreenPanelView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    sget-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object p1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "SecondScreenIncomingHandle"

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->VIBRATE_LONG:J

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->MAKE_TARGET_DURATION:I

    iput-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mParentView:Lcom/android/incallui/cocktail/SecondScreenPanelView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    sget-object v0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object p1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    return-void
.end method

.method private handleEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const-string v3, "SecondScreenIncomingHandle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent()... event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_interaction"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SecondScreenIncomingHandle"

    const-string v4, "EASY_INTERACTION..."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    invoke-direct {p0, v3}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->processCallCommand(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_2
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    sget-object v4, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->ACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    invoke-virtual {p0}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->updateHandle()V

    const-wide/16 v3, 0x1e

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->vibrate(J)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    sget-object v4, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->ACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->processMoveEvent(Landroid/view/MotionEvent;)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    sget-object v4, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->ACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    invoke-virtual {p0}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->updateHandle()V

    const/4 v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private processCallCommand(I)V
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mParentView:Lcom/android/incallui/cocktail/SecondScreenPanelView;

    if-nez v1, :cond_1

    const-string v1, "SecondScreenIncomingHandle"

    const-string v2, "processCallCommand() mParentView is null"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mParentView:Lcom/android/incallui/cocktail/SecondScreenPanelView;

    invoke-virtual {v1}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->getCurrentBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mParentView:Lcom/android/incallui/cocktail/SecondScreenPanelView;

    invoke-virtual {v1}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->getCurrentBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "callstate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eq v0, v3, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v1, "accept"

    invoke-direct {p0, v1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->sendNoticeIntent(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->ANSWER:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    invoke-static {v1, v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->telephonyInvokeHook(Landroid/content/Context;Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;)V

    goto :goto_0

    :pswitch_1
    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->END:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    invoke-static {v1, v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->telephonyInvokeHook(Landroid/content/Context;Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendNoticeIntent(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.CALL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "SecondScreenIncomingHandle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNoticeIntent Action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Context : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateMovingCircle(FF)V
    .locals 5

    const-string v2, "SecondScreenIncomingHandle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMovingCircle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    sget-object v3, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->ACTIVE:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mMovingCircle:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getTargetProximityRatio(FF)D
    .locals 14

    iget-object v10, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d020b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d020c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    div-int/lit8 v5, v9, 0x2

    div-int/lit8 v8, v9, 0x2

    int-to-float v10, v4

    sub-float v10, p1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    int-to-float v10, v5

    sub-float v10, p2, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double v10, v0, v0

    mul-double v12, v2, v2

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    int-to-double v10, v8

    div-double v10, v6, v10

    return-wide v10
.end method

.method public inflateHandle(I)V
    .locals 5

    const v4, 0x7f020067

    const v3, 0x7f020060

    const/4 v2, 0x1

    iput p1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f0e02e4

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    const v1, 0x7f0e02e2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTargetCircle:Landroid/widget/ImageView;

    const v1, 0x7f0e02e5

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v1, 0x7f0e02e3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    invoke-virtual {p0}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->updateHandle()V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public isInTabCircle(Landroid/view/MotionEvent;)Z
    .locals 13

    const v11, 0x7f0d020d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d020b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v6, v9, 0x2

    iget-object v9, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d020c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v5, v9, 0x2

    iget-object v9, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v3, v9, 0x2

    iget-object v9, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v2, v9, 0x2

    div-int/lit8 v0, v3, 0x2

    new-instance v4, Landroid/graphics/Rect;

    sub-int v9, v6, v3

    sub-int/2addr v9, v0

    sub-int v10, v5, v2

    sub-int/2addr v10, v0

    add-int v11, v6, v3

    add-int/2addr v11, v0

    add-int v12, v5, v2

    add-int/2addr v12, v0

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v9, v7

    float-to-int v10, v8

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    const-string v9, "SecondScreenIncomingHandle"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isInTabCircle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v1
.end method

.method public isThresholdReached(FF)Z
    .locals 7

    const-wide v0, 0x3fefae147ae147aeL

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->getTargetProximityRatio(FF)D

    move-result-wide v2

    const-string v4, "SecondScreenIncomingHandle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ratio : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v4, 0x3fefae147ae147aeL

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v2, "SecondScreenIncomingHandle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHoverEvent... event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v2, "SecondScreenIncomingHandle"

    const-string v3, "onInterceptHoverEvent"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const-string v2, "SecondScreenIncomingHandle"

    const-string v3, "onInterceptTouchEvent"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_interaction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v1, v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return v5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->isThresholdReached(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    invoke-direct {p0, v2}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->processCallCommand(I)V

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;->NORMAL:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    iput-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    invoke-virtual {p0}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->updateHandle()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->updateMovingCircle(FF)V

    goto :goto_0
.end method

.method public setParentView(Lcom/android/incallui/cocktail/SecondScreenPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mParentView:Lcom/android/incallui/cocktail/SecondScreenPanelView;

    return-void
.end method

.method public updateHandle()V
    .locals 11

    const/4 v10, 0x0

    const/high16 v6, 0x40000000

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f800000

    const/4 v9, 0x1

    const-string v3, "SecondScreenIncomingHandle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHandle()... mHandleState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v3, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$1;->$SwitchMap$com$android$incallui$cocktail$SecondScreenIncomingHandle$HandleState:[I

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleState:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle$HandleState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v3, v6

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v6, v3, v6

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    if-ne v1, v9, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTargetCircle:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mMovingCircle:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    if-ne v1, v9, :cond_2

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mHandleType:I

    if-ne v1, v9, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mTabCircle:Landroid/widget/ImageView;

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized vibrate(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
