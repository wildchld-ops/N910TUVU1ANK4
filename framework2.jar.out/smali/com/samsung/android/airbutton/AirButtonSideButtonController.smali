.class public Lcom/samsung/android/airbutton/AirButtonSideButtonController;
.super Ljava/lang/Object;
.source "AirButtonSideButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;
    }
.end annotation


# static fields
.field private static mUspLevel:I

.field private static sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

.field private static sKeyguardManager:Landroid/app/KeyguardManager;


# instance fields
.field private final BTN_PRESS_TIME_LIMIT:I

.field private final TAG:Ljava/lang/String;

.field private mBlockLongPress:Z

.field private mIsHoverEnter:Z

.field private mOldSideBtnState:I

.field private mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

.field private mSideBtnPressedTime:J

.field private mWasTouchDowned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mUspLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AirButtonSideButtonController"

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->TAG:Ljava/lang/String;

    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->BTN_PRESS_TIME_LIMIT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AirButtonSideButtonController"

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->TAG:Ljava/lang/String;

    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->BTN_PRESS_TIME_LIMIT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    if-eqz p1, :cond_2

    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "spengestureservice"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mUspLevel:I

    :cond_2
    return-void
.end method


# virtual methods
.method public isKeyguardVisible()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AirButtonSideButtonController"

    const-string v1, "isKeyguardSecure : true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v4, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    const-string v4, "AirButtonSideButtonController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Btn pressed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v4, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v4, "AirButtonSideButtonController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time differences = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v6, v1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x320

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;->onSideButtonClicked(Landroid/view/MotionEvent;)V

    const/4 v3, 0x1

    :cond_2
    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    invoke-virtual {p0, v9}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    goto :goto_0

    :pswitch_2
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    if-nez v4, :cond_4

    invoke-virtual {p0, v9}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onHoverForGA(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1    # Landroid/view/MotionEvent;

    const-wide/16 v12, 0x320

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v11, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v5, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Btn pressed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    :cond_2
    return v4

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    :cond_3
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hover entered = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v5, v1, :cond_7

    iget-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    if-eqz v5, :cond_6

    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    :cond_5
    :goto_2
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Click] Time differences = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v5, v2, v5

    cmp-long v5, v5, v12

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;->onSideButtonClicked(Landroid/view/MotionEvent;)V

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    sget v5, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mUspLevel:I

    if-ne v5, v11, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v5, v2, v5

    cmp-long v5, v5, v12

    if-ltz v5, :cond_0

    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Long Press] Time differences = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    const/4 v0, 0x0

    sget-object v5, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-eqz v5, :cond_8

    sget-object v5, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v9, v6, v7}, Lcom/samsung/android/smartclip/SpenGestureManager;->getAirButtonHitTest(III)I

    move-result v5

    if-ne v5, v10, :cond_8

    const-string v5, "AirButtonSideButtonController"

    const-string v6, "hit test"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->isKeyguardVisible()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;->onSideButtonClicked(Landroid/view/MotionEvent;)V

    const/4 v4, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchDownForGA(I)V
    .locals 2
    .param p1    # I

    const-string v0, "AirButtonSideButtonController"

    const-string/jumbo v1, "onTouchDownForGA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    goto :goto_0
.end method

.method public onTouchUpForGA(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public resetVariables(Z)V
    .locals 2
    .param p1    # Z

    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    return-void
.end method

.method public setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    return-void
.end method
