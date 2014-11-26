.class public Lcom/android/incallui/help/RejectCallsWithMessage;
.super Landroid/app/Activity;
.source "RejectCallsWithMessage.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;
    }
.end annotation


# static fields
.field public static defaultRejectMsgList:[Ljava/lang/String;

.field public static final defaultRejectMsgListKor:[Ljava/lang/String;

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCreateButton:Landroid/view/View;

.field private mCurrentPeriodMarkIndex:I

.field private mDragUpImageLayout:Landroid/widget/FrameLayout;

.field private mDragUpImageView:[Landroid/widget/ImageView;

.field private mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mIncomingCallPhoto:Landroid/widget/LinearLayout;

.field private mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mNumberIconLabel:Landroid/widget/ImageView;

.field private mOnScreenMenuBtn:Landroid/view/View;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPeriodMarkList:[I

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

.field private mRejectCallWithMessageItemList:Landroid/widget/ListView;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

.field private mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

.field private mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

.field private mRejectCallWithMsgTab:Landroid/widget/LinearLayout;

.field private mSendMsgComplete:Landroid/widget/FrameLayout;

.field private mSendMsgLayout:Landroid/view/ViewGroup;

.field private mSendMsgTip:Landroid/widget/FrameLayout;

.field private mSendMsgTipBubble:Landroid/widget/FrameLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mrejectMsgTip:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "callsettings_rejectmessage_list1"

    aput-object v1, v0, v2

    const-string v1, "callsettings_rejectmessage_list2"

    aput-object v1, v0, v3

    const-string v1, "callsettings_rejectmessage_list5"

    aput-object v1, v0, v4

    const-string v1, "callsettings_rejectmessage_list4"

    aput-object v1, v0, v5

    const-string v1, "callsettings_rejectmessage_list3"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgList:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "callsettings_rejectmessage_list1_kor"

    aput-object v1, v0, v2

    const-string v1, "callsettings_rejectmessage_list2_kor"

    aput-object v1, v0, v3

    const-string v1, "callsettings_rejectmessage_list3_kor"

    aput-object v1, v0, v4

    const-string v1, "callsettings_rejectmessage_list4_kor"

    aput-object v1, v0, v5

    const-string v1, "callsettings_rejectmessage_list5_kor"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgListKor:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-array v0, v1, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;

    iput v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    iput v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCurrentPeriodMarkIndex:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMarkList:[I

    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$8;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$9;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$9;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$10;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/RejectCallsWithMessage$11;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$11;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020186
        0x7f020187
        0x7f020188
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/help/RejectCallsWithMessage;)I
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/incallui/help/RejectCallsWithMessage;I)I
    .locals 0
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCurrentPeriodMarkIndex:I

    return p1
.end method

.method static synthetic access$1308(Lcom/android/incallui/help/RejectCallsWithMessage;)I
    .locals 2
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCurrentPeriodMarkIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/help/RejectCallsWithMessage;)[I
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMarkList:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/help/RejectCallsWithMessage;)I
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1608(Lcom/android/incallui/help/RejectCallsWithMessage;)I
    .locals 2
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->clickRejectCallsWithMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/RejectCallsWithMessage;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0
    .param p0    # Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->hideDragUpAnimation()V

    return-void
.end method

.method private buttonAnimationInit(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const v3, 0x7f050003

    const v0, 0x7f05000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private clickRejectCallsWithMessage()V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mFlashingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private hideDragUpAnimation()V
    .locals 2

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "hideDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->stopDragUpAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showDragUpAnimation()V
    .locals 2

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "showDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->startDragUpAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showToast()V
    .locals 3

    const v2, 0x7f0900f2

    sget-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/help/RejectCallsWithMessage;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private startDragUpAnimation()V
    .locals 2

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "startDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopDragUpAnimation()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "stopDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_2
    return-void
.end method

.method private updateBgColorForCallState()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private updateCallCard()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->startPeriodAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryName:Landroid/widget/TextView;

    const-string v1, "Jenette McHale"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mNumberIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mNumberIconLabel:Landroid/widget/ImageView;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mNumberIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, "012-345-6789"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02047a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mOnScreenMenuBtn:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mOnScreenMenuBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1    # Landroid/content/res/Configuration;

    const/4 v6, 0x0

    const-string v3, "RejectCallsWithMessage"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    :cond_2
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0123

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0272

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0273

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;

    const/16 v13, 0x8

    const/4 v12, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v8, "RejectCallsWithMessage"

    const-string v9, "onCreate()"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "tablet_device"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    const/high16 v3, 0x4000000

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Window;->addFlags(I)V

    const-string v8, "statusbar"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mStatusBarManager:Landroid/app/StatusBarManager;

    const v8, 0x7f04007c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    const v8, 0x7f0e01e2

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIndicatorArea:Landroid/view/ViewGroup;

    const v8, 0x7f0e01ee

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v8, 0x7f0e01e4

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v8, 0x7f0e0043

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallStateLabel:Landroid/widget/TextView;

    const v8, 0x7f0e01fd

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    const v8, 0x7f0e0042

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPrimaryName:Landroid/widget/TextView;

    const v8, 0x7f0e0201

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mNumberIconLabel:Landroid/widget/ImageView;

    const v8, 0x7f0e0203

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoneNumber:Landroid/widget/TextView;

    const v8, 0x7f0e004b

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPhoto:Landroid/widget/ImageView;

    const v8, 0x7f0e0112

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mOnScreenMenuBtn:Landroid/view/View;

    const v8, 0x7f0e0209

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCallTypeLabel:Landroid/widget/TextView;

    const v8, 0x7f0e02a6

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v8, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    const v8, 0x7f0e028c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SlidingDrawer;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const v8, 0x7f0e000a

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    const v8, 0x7f0e0009

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$1;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$1;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0e028e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/RejectCallWithMessageContent;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    const v9, 0x7f0e027f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    const v9, 0x7f0e0281

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v8, 0x7f0e0294

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgLayout:Landroid/view/ViewGroup;

    const-string v8, "tablet_device"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_2
    const-string v8, "reject_call_with_message_icon_mode"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_3
    const v8, 0x7f0e02a0

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgTab:Landroid/widget/LinearLayout;

    const v8, 0x7f0e02a5

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$2;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$2;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v8, 0x7f0e0290

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$3;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    const v8, 0x7f0e000c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const-string v8, "change_message_icon_for_att"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v9, 0x7f02036d

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    const v8, 0x7f0e02a8

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    const v8, 0x7f0e02aa

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTip:Landroid/widget/FrameLayout;

    const v8, 0x7f0e02ac

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    const v8, 0x7f0e02ad

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgComplete:Landroid/widget/FrameLayout;

    const v8, 0x7f0e02ae

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;

    const v8, 0x7f0e02af

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    aput-object v8, v9, v11

    iget-object v9, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;

    const v8, 0x7f0e02b0

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    aput-object v8, v9, v10

    iget-object v9, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;

    const/4 v10, 0x2

    const v8, 0x7f0e02b1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    aput-object v8, v9, v10

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/incallui/help/RejectCallsWithMessage;->buttonAnimationInit(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v12, :cond_8

    const/4 v5, 0x0

    const-string v8, "modify_reject_message"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgListKor:[Ljava/lang/String;

    aget-object v2, v8, v4

    :goto_2
    const-string v8, "string"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "RejectCallsWithMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Reject Message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_7
    sget-object v8, Lcom/android/incallui/help/RejectCallsWithMessage;->defaultRejectMsgList:[Ljava/lang/String;

    aget-object v2, v8, v4

    goto :goto_2

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v8, v7}, Lcom/android/incallui/RejectCallWithMessageContent;->configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v8}, Lcom/android/incallui/RejectCallWithMessageContent;->getRejectCallWithMessageItemList()Landroid/widget/ListView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/incallui/help/RejectCallsWithMessage$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;Lcom/android/incallui/help/RejectCallsWithMessage$1;)V

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_9
    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$4;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$4;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$5;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$5;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$6;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$6;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    const v9, 0x7f0e0282

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setFocusable(Z)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setClickable(Z)V

    iget-object v8, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCreateButton:Landroid/view/View;

    new-instance v9, Lcom/android/incallui/help/RejectCallsWithMessage$7;

    invoke-direct {v9, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$7;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->updateCallCard()V

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->updateBgColorForCallState()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->stopPeriodAnimation()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->hideDragUpAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showDragUpAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mrejectMsgTip:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->showToast()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startPeriodAnimation()V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "startPeriodAnimation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectCallsWithMessage;->stopPeriodAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMarkList:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public stopPeriodAnimation()V
    .locals 2

    const/16 v1, 0x78

    const-string v0, "stopPeriodAnimation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage;->mCurrentPeriodMarkIndex:I

    :cond_1
    return-void
.end method
