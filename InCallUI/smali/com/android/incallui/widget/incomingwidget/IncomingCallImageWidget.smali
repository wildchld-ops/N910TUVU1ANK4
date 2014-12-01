.class public Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final END_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final ENLARGED_DESCRIPTION_TEXT_SIZE:I

.field private final INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final NORMAL_DESCRIPTION_TEXT_SIZE:I

.field public final VIBRATE_LONG:J

.field public final VIBRATE_SHORT:J

.field coverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field protected mContext:Landroid/content/Context;

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field protected mGrabbedState:I

.field private mIncomingCallHelpDescription:Landroid/widget/TextView;

.field protected mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

.field protected mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

.field protected mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

.field protected mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

.field private mTag:Ljava/lang/String;

.field public mUseHoverToAction:Z

.field public mUseVibate:Z

.field protected mVibrator:Landroid/os/Vibrator;

.field private marginMagicNumber:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->DBG:Z

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->NORMAL_DESCRIPTION_TEXT_SIZE:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->ENLARGED_DESCRIPTION_TEXT_SIZE:I

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    const-wide/high16 v0, 0x4010000000000000L

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->marginMagicNumber:D

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->DBG:Z

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->NORMAL_DESCRIPTION_TEXT_SIZE:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->ENLARGED_DESCRIPTION_TEXT_SIZE:I

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    const-wide/high16 v0, 0x4010000000000000L

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->marginMagicNumber:D

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->DBG:Z

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->NORMAL_DESCRIPTION_TEXT_SIZE:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->ENLARGED_DESCRIPTION_TEXT_SIZE:I

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    const-wide/high16 v0, 0x4010000000000000L

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->marginMagicNumber:D

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->init()V

    return-void
.end method


# virtual methods
.method public clearDrawable()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_1
    return-void
.end method

.method createIncomingCallHelpDescription()V
    .locals 4

    const/4 v2, -0x2

    const-string v1, "incoming_call_widget_description_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    const v2, 0x7f090206

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    const/high16 v2, 0x41500000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "incoming_call_widget_description_enlarge"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public dispatchTriggerEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->vibrate(J)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public enableArrowAnimation(IZ)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected init()V
    .locals 7

    const/16 v6, 0x53

    const/4 v5, -0x2

    const-string v3, "init"

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    const-string v4, "useHoverToAction"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x55

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->initHandle()V

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "incoming_call_widget_for_volte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->createIncomingCallHelpDescription()V

    return-void
.end method

.method initHandle()V
    .locals 8

    const v7, 0x7f02008c

    const v6, 0x7f020081

    const v5, 0x7f020080

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    const-string v0, "cover_incoming"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cover_incall"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cover_endcall"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-wide/high16 v0, 0x4012000000000000L

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->marginMagicNumber:D

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f0900aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setLeftTabImageResource(II)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setLeftHandleImageResource(II)V

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f0900ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v0, "cover_endcall"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v5, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setRightTabImageResource(II)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v5, v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setRightHandleImageResource(II)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    const-string v0, "incoming_call_widget_for_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0200ad

    const v2, 0x7f02008d

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setRightTabImageResource(II)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f0200ad

    const v2, 0x7f02008d

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setRightHandleImageResource(II)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f0900aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f0900ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    goto/16 :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IncomingCallImageWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->updateLayout()V

    return-void
.end method

.method public removeArrowMsg()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    const-string v0, "incoming_call_widget_for_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_0
    return-void
.end method

.method protected setGrabbedState(I)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    return-void
.end method

.method public setTouchVibationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startAirMotionAnimation(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->startAirMotionAnimation(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_0
    return-void
.end method

.method updateIncomingCallHelpDescription()V
    .locals 6

    const-string v4, "incoming_call_widget_description_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x16

    div-int/lit8 v5, v5, 0x64

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected updateLayout()V
    .locals 17

    new-instance v13, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->marginMagicNumber:D

    div-double/2addr v13, v15

    double-to-int v6, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0062

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v3, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0063

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0065

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v11, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0066

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0067

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v13, v6

    div-int/lit8 v14, v6, 0xa

    sub-int v4, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/2addr v13, v6

    div-int/lit8 v14, v6, 0xa

    add-int v8, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "cover_for_kk_model"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v13, v6

    div-int/lit8 v14, v6, 0x3

    sub-int v4, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/2addr v13, v6

    div-int/lit8 v14, v6, 0x3

    add-int v8, v13, v14

    :cond_0
    const-string v13, "incoming_call_widget_for_volte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    const-string v13, "vzw_volte_ui"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "volte_jpn_orientation_feature"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "att_volte_ui"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "tmo_volte_ui"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    add-int/2addr v13, v6

    sub-int v5, v13, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    add-int/2addr v13, v6

    sub-int v9, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    add-int/2addr v13, v6

    sub-int v2, v13, v10

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v5

    invoke-virtual {v13, v4, v5, v14, v15}, Landroid/view/ViewGroup;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v9

    invoke-virtual {v13, v8, v9, v14, v15}, Landroid/view/ViewGroup;->layout(IIII)V

    const-string v13, "incoming_call_widget_for_volte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v2

    invoke-virtual {v13, v4, v2, v14, v15}, Landroid/view/ViewGroup;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    const/4 v14, 0x6

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateArrowHandle()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateArrowHandle()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->updateIncomingCallHelpDescription()V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x4

    add-int/2addr v13, v14

    sub-int v5, v13, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x4

    add-int/2addr v13, v14

    sub-int v9, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x4

    add-int/2addr v13, v14

    sub-int v2, v13, v10

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "QVGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x4

    add-int/2addr v13, v14

    sub-int v5, v13, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x4

    add-int/2addr v13, v14

    sub-int v9, v13, v7

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v13

    const/high16 v13, 0x44340000

    cmpl-float v13, v1, v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x4

    add-int/2addr v13, v14

    add-int/lit8 v5, v13, -0x14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x4

    add-int/2addr v13, v14

    add-int/lit8 v9, v13, -0x14

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "cover_for_kk_model"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v13, v14

    add-int/lit8 v5, v13, -0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v13, v14

    add-int/lit8 v9, v13, -0x2

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    const/4 v14, 0x6

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v13, v14

    add-int/lit8 v5, v13, -0x75

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v13, v14

    add-int/lit8 v9, v13, -0x75

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v13, v6

    div-int/lit8 v14, v6, 0x5

    sub-int v4, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/2addr v13, v6

    div-int/lit8 v14, v6, 0x5

    add-int v8, v13, v14

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x4

    add-int v5, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x4

    add-int v9, v13, v14

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public declared-synchronized vibrate(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1e

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
