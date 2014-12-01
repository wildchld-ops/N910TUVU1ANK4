.class public Lcom/android/phone/IncomingCallWidget$Handle;
.super Ljava/lang/Object;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;,
        Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;
    }
.end annotation


# instance fields
.field private final AIR_MOTION_SWING_DURATION:I

.field private final AIR_MOTION_SWING_REPEATCOUNT:I

.field private final ARROW_ANI_DURATION:I

.field final ARROW_COUNT:I

.field private final FIRST_WAVE_DELAY:I

.field private final MAKE_TARGET_DURATION:I

.field private final REMOVE_AIRMOTION_SWEEP:I

.field private final RESET_DURATION:I

.field private final RESET_STATE:I

.field private final SECOND_WAVE_DELAY:I

.field private final START_WAVE:I

.field private isXlargeScreen:Z

.field private mArrowAcceptImage_id_USA:[I

.field private mArrowContainer:Landroid/widget/LinearLayout;

.field private mArrowImageViews:[Landroid/widget/ImageView;

.field private mArrowRejectImage_id_USA:[I

.field private mCircleColor:I

.field public mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDuringSwingAnimation:Z

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mIncomingCircleDescription:Landroid/widget/TextView;

.field private mParent:Landroid/view/ViewGroup;

.field private mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTab:Landroid/widget/ImageView;

.field private mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

.field private mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

.field private mTopOffset:I

.field final synthetic this$0:Lcom/android/phone/IncomingCallWidget;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 6
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/view/ViewGroup;
    .param p4    # I

    const/16 v5, 0x384

    const/16 v4, 0x12c

    const/16 v3, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x4

    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->AIR_MOTION_SWING_DURATION:I

    iput v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->AIR_MOTION_SWING_REPEATCOUNT:I

    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->FIRST_WAVE_DELAY:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->SECOND_WAVE_DELAY:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->START_WAVE:I

    iput v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->RESET_STATE:I

    iput v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->REMOVE_AIRMOTION_SWEEP:I

    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->ARROW_ANI_DURATION:I

    iput v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->ARROW_COUNT:I

    iput v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    iput-boolean v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mDuringSwingAnimation:Z

    iput-boolean v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowAcceptImage_id_USA:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowRejectImage_id_USA:[I

    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallWidget$Handle$3;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->MAKE_TARGET_DURATION:I

    iput v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->RESET_DURATION:I

    iput-object p2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->init()V

    return-void

    :array_0
    .array-data 4
        0x7f020022
        0x7f020023
        0x7f020021
        0x7f020024
    .end array-data

    :array_1
    .array-data 4
        0x7f020028
        0x7f020025
        0x7f020027
        0x7f020026
    .end array-data
.end method

.method static synthetic access$102(Lcom/android/phone/IncomingCallWidget$Handle;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/IncomingCallWidget$Handle;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mDuringSwingAnimation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .locals 1
    .param p0    # Lcom/android/phone/IncomingCallWidget$Handle;

    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .locals 1
    .param p0    # Lcom/android/phone/IncomingCallWidget$Handle;

    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0
    .param p0    # Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0
    .param p0    # Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .locals 1
    .param p0    # Lcom/android/phone/IncomingCallWidget$Handle;

    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/IncomingCallWidget$Handle;)[Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0    # Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private hideArrow()V
    .locals 6

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v7, -0x2

    const/4 v9, 0x2

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v6, " Handle ; init!"

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    iput v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$1;

    invoke-direct {v5, p0}, Lcom/android/phone/IncomingCallWidget$Handle$1;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$2;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/phone/IncomingCallWidget$Handle$2;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit16 v5, v5, 0x90

    div-int/lit16 v5, v5, 0x168

    mul-int/lit8 v1, v5, 0x2

    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x56

    div-int/lit16 v1, v5, 0x80

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v5}, Lcom/android/phone/IncomingCallWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v2, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v8, :cond_6

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EmergencyCallbackMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f0201c7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    :cond_1
    :goto_1
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    if-eqz v5, :cond_8

    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x6

    div-int/lit8 v7, v7, 0x33

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    :goto_2
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v5, v11}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "incoming_call_widget_description_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InCallScreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v5}, Lcom/android/phone/IncomingCallWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_a

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v5, v1, 0x36

    div-int/lit8 v5, v5, 0x64

    invoke-direct {v3, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_3
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    const v6, 0x7f090739

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const-string v5, "incoming_call_widget_description_enlarge"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v8, :cond_b

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v7, 0x7f0901fb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f0201c4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_6
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v9, :cond_1

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EmergencyCallbackMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f0201c5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_5
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    goto/16 :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f0201c6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    :cond_8
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x6

    div-int/lit8 v7, v7, 0x32

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    goto/16 :goto_2

    :cond_9
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x10

    div-int/lit8 v7, v7, 0x69

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    goto/16 :goto_2

    :cond_a
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v5, v1, 0x48

    div-int/lit8 v5, v5, 0x64

    invoke-direct {v3, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_3

    :cond_b
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v9, :cond_4

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v7, 0x7f0901fc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_4
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private makeArrowViews(Landroid/widget/FrameLayout;I)V
    .locals 12
    .param p1    # Landroid/widget/FrameLayout;
    .param p2    # I

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/high16 v0, 0x41a00000

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v8, p2, 0x4

    div-int/lit8 v8, v8, 0x5f

    mul-int/lit8 v9, p2, 0x3

    div-int/lit8 v9, v9, 0x5f

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x0

    :goto_0
    const/4 v8, 0x4

    if-ge v3, v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v3

    const/4 v1, 0x0

    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const-string v8, "accept_or_reject_calls_dialog"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowAcceptImage_id_USA:[I

    aget v2, v8, v3

    :goto_1
    const/16 v4, 0x15

    const/high16 v8, 0x437f0000

    const/high16 v9, 0x3f800000

    const/high16 v10, 0x41a00000

    rsub-int/lit8 v11, v3, 0x4

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const v2, 0x7f020021

    goto :goto_1

    :cond_3
    const/high16 v8, 0x437f0000

    const/high16 v9, 0x3f800000

    const/high16 v10, 0x41a00000

    int-to-float v11, v3

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    const-string v8, "accept_or_reject_calls_dialog"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowRejectImage_id_USA:[I

    aget v2, v8, v3

    :goto_3
    const/16 v4, 0x13

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x3

    if-eq v3, v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    const v2, 0x7f020025

    goto :goto_3

    :cond_5
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string v8, "move_incomingcallwidget_touch_area"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    mul-int/lit8 v8, p2, 0xd

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_4
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6
    mul-int/lit8 v8, p2, 0xd

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    :cond_7
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    mul-int/lit8 v8, p2, 0xb

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    :cond_8
    mul-int/lit8 v8, p2, 0xb

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4
.end method

.method private reset(ZF)V
    .locals 9
    .param p1    # Z
    .param p2    # F

    const v2, 0x3e99999a

    if-eqz p1, :cond_0

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move v1, p2

    move v3, p2

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->clearAnimation()V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    goto :goto_0
.end method

.method private setDisable()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const v2, 0x3eb33333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    return-void
.end method

.method private setEnable()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3eb33333

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    return-void
.end method

.method private showArrow()V
    .locals 3

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private showTarget(F)V
    .locals 10
    .param p1    # F

    const/4 v9, 0x1

    const v1, 0x3e99999a

    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget-object v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    move v2, p1

    move v3, v1

    move v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    return v0
.end method

.method public isHandleSelected(FF)Z
    .locals 3
    .param p1    # F
    .param p2    # F

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    if-ltz v0, :cond_0

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    return v0
.end method

.method public makeLayout()V
    .locals 15

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v12}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    mul-int/lit8 v11, v11, 0x24

    div-int/lit16 v5, v11, 0x80

    const-string v11, "move_incomingcallwidget_touch_area"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v11}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v11, v11, 0x11

    div-int/lit16 v11, v11, 0xa0

    sub-int/2addr v5, v11

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v11}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v11, v11, 0xa

    div-int/lit16 v6, v11, 0xa0

    :cond_0
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "EmergencyCallbackMode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v0, 0x1e

    :goto_0
    iget v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    sub-int v3, v11, v5

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    div-int/2addr v12, v0

    add-int v4, v11, v12

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    sub-int v12, v4, v6

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    add-int/2addr v14, v4

    sub-int/2addr v14, v6

    invoke-virtual {v11, v3, v12, v13, v14}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x5

    add-int v2, v11, v12

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x9

    div-int/lit8 v12, v12, 0xa

    sub-int v1, v11, v12

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v13

    add-int/2addr v13, v1

    invoke-virtual {v11, v2, v1, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mDisplayMetrics "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v13}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_3
    iget v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    add-int v9, v11, v5

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x9

    div-int/lit8 v12, v12, 0xa

    div-int/2addr v12, v0

    add-int v10, v11, v12

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    sub-int v12, v10, v6

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v13

    add-int/2addr v13, v9

    iget-object v14, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    add-int/2addr v14, v10

    sub-int/2addr v14, v6

    invoke-virtual {v11, v9, v12, v13, v14}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x5

    sub-int v8, v11, v12

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    add-int v7, v11, v12

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v11, v8, v7, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_1
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1    # Landroid/view/MotionEvent;

    const/4 v8, 0x0

    iget v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->isThresholdReached(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->clearAnimation()V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v8}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # setter for: Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z
    invoke-static {v4, v8}, Lcom/android/phone/IncomingCallWidget;->access$1002(Lcom/android/phone/IncomingCallWidget;Z)Z

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    # invokes: Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V
    invoke-static {v4, v5}, Lcom/android/phone/IncomingCallWidget;->access$1100(Lcom/android/phone/IncomingCallWidget;I)V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # invokes: Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V
    invoke-static {v4, v8}, Lcom/android/phone/IncomingCallWidget;->access$1200(Lcom/android/phone/IncomingCallWidget;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    :goto_1
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const-wide v5, 0x406fe00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const-wide v5, 0x4063c00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x61

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    goto :goto_1
.end method

.method public setState(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(IZ)V

    return-void
.end method

.method public setState(IZ)V
    .locals 9
    .param p1    # I
    .param p2    # Z

    const/16 v8, 0xc8

    const v7, 0x3f4f5c29

    const v6, 0x3f266666

    const/high16 v5, 0x3f800000

    const/16 v4, 0x12c

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v2, "Block setState until reset. Handles will be reset"

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    iput p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setState preState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Current : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->setEnable()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget(F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p2, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(ZF)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p2, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(ZF)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p2, v7}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(ZF)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(ZF)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->setDisable()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget(F)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v7}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget(F)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget(F)V

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public tabletMakeLayout()V
    .locals 14

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v12}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x0

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v11}, Lcom/android/phone/IncomingCallWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const/4 v6, 0x0

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    mul-int/lit8 v11, v11, 0x22

    div-int/lit16 v6, v11, 0x80

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "marginX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    # invokes: Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v13}, Lcom/android/phone/IncomingCallWidget;->access$400(Lcom/android/phone/IncomingCallWidget;Ljava/lang/String;Z)V

    iget v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    sub-int v4, v11, v6

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-boolean v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x4

    div-int/lit8 v12, v12, 0xf

    add-int v5, v11, v12

    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    add-int v3, v11, v12

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    sub-int v2, v11, v12

    const-string v11, "common_volte_vt_kor"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v2, v11, v12

    :cond_2
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v11, v3, v2, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mDisplayMetrics "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v13}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    return-void

    :cond_4
    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0xf

    add-int v5, v11, v12

    goto/16 :goto_1

    :cond_6
    iget v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    add-int v9, v11, v6

    const/4 v10, 0x0

    if-eqz v1, :cond_7

    iget-boolean v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x4

    div-int/lit8 v12, v12, 0xf

    add-int v10, v11, v12

    :cond_7
    :goto_3
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    sub-int v8, v11, v12

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    add-int v7, v11, v12

    const-string v11, "common_volte_vt_kor"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v8

    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v7, v11, v12

    :cond_8
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v11, v8, v7, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_2

    :cond_9
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0xf

    add-int v10, v11, v12

    goto/16 :goto_3
.end method

.method public tabletProcessMoveEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1    # Landroid/view/MotionEvent;

    const-wide/16 v11, 0x1f4

    const/4 v10, 0x0

    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const-wide v2, 0x3fee666666666666L

    const-wide/high16 v4, 0x4004000000000000L

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v8, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    cmpg-double v8, v0, v2

    if-gez v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v9, "Not reach the target circle, set Circle\'s alpha value"

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    :goto_0
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const-wide v9, 0x406fe00000000000L

    mul-double/2addr v9, v0

    double-to-int v9, v9

    rsub-int v9, v9, 0xff

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const-wide v9, 0x4063c00000000000L

    mul-double/2addr v9, v0

    double-to-int v9, v9

    add-int/lit8 v9, v9, 0x61

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    goto :goto_0

    :cond_2
    cmpl-double v8, v0, v2

    if-ltz v8, :cond_3

    cmpg-double v8, v0, v4

    if-gtz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v9, " Reach the valid region, let\'s call dispatchTriggerEvent()"

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->clearAnimation()V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->clearAnimation()V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->invalidate()V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8, v10}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v8}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->invalidate()V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # setter for: Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z
    invoke-static {v8, v10}, Lcom/android/phone/IncomingCallWidget;->access$1002(Lcom/android/phone/IncomingCallWidget;Z)Z

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    # invokes: Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V
    invoke-static {v8, v9}, Lcom/android/phone/IncomingCallWidget;->access$1100(Lcom/android/phone/IncomingCallWidget;I)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    # invokes: Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V
    invoke-static {v8, v10}, Lcom/android/phone/IncomingCallWidget;->access$1200(Lcom/android/phone/IncomingCallWidget;I)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/phone/IncomingCallWidget$Handle$4;

    invoke-direct {v9, p0}, Lcom/android/phone/IncomingCallWidget$Handle$4;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    invoke-virtual {v8, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v9, " Go over the valid region, set the State as Normal"

    invoke-virtual {v8, v9}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/phone/IncomingCallWidget$Handle$5;

    invoke-direct {v9, p0}, Lcom/android/phone/IncomingCallWidget$Handle$5;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    invoke-virtual {v8, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
