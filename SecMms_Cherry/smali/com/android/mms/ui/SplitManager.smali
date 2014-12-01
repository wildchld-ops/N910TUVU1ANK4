.class public Lcom/android/mms/ui/SplitManager;
.super Ljava/lang/Object;
.source "SplitManager.java"


# static fields
.field private static final ANIMATION_DELAY:I = 0x0

.field private static final ANIMATION_OFFSET:I = 0x28

.field private static final CONV_MODE:I = 0x65

.field private static DEVICE_SCREEN_WIDTH_SIZE:I = 0x0

.field private static final FOLDER_MODE:I = 0x66

.field private static SPLIT_BAR_DEFAULT_POSITION:I = 0x0

.field private static SPLIT_BAR_MARGIN:I = 0x0

.field private static SPLIT_BAR_MAX_X:I = 0x0

.field private static SPLIT_BAR_MIN_X:I = 0x0

.field private static final SPLIT_BAR_WIDTH:I = 0x4

.field public static final SPLIT_MODE_LEFT_ONLY:I = 0x0

.field public static final SPLIT_MODE_NONE:I = -0x1

.field public static final SPLIT_MODE_RIGHT_ONLY:I = 0x1

.field public static final SPLIT_MODE_SPLITED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/SplitManager"


# instance fields
.field mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

.field private mCount:I

.field private mEndX:I

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimationEnable:Z

.field private mLeftView:Landroid/view/View;

.field private mMode:I

.field private mOffset:I

.field private mOnAnimate:Z

.field private mRightView:Landroid/view/View;

.field private mSplitBar:Landroid/view/View;

.field private mSplitMode:I

.field private mStartX:I

.field private mUseSplitMode:Z

.field private mWidth:I

.field private mX:I

.field msg:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41200000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MIN_X:I

    const v0, 0x441ec000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MAX_X:I

    const/16 v0, 0x118

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    const/high16 v0, 0x41800000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/BoxListViewActivity;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->msg:Landroid/os/Message;

    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->loadSplitPosition()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x41400000

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    iput-boolean v5, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    iput-boolean v5, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    iput-object v3, p0, Lcom/android/mms/ui/SplitManager;->msg:Landroid/os/Message;

    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/16 v2, 0x65

    iput v2, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    iput-object p4, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_0
    sput v1, Lcom/android/mms/ui/SplitManager;->DEVICE_SCREEN_WIDTH_SIZE:I

    sget v2, Lcom/android/mms/ui/SplitManager;->DEVICE_SCREEN_WIDTH_SIZE:I

    sput v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MAX_X:I

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    sput v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MIN_X:I

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    sput v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->loadSplitPosition()V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SplitManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SplitManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return p1
.end method

.method static synthetic access$112(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SplitManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SplitManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$828(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v0

    return v0
.end method

.method private animationLayout()Z
    .locals 4

    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v1, Lcom/android/mms/ui/SplitManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SplitManager$1;-><init>(Lcom/android/mms/ui/SplitManager;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadSplitPosition()V
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-le v1, v2, :cond_0

    div-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    :goto_0
    return-void

    :cond_0
    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    goto :goto_0
.end method

.method private sendMessageRefreshed()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SplitManager;->msg:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public UpdateSplitPosition(I)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    add-int v0, v2, p1

    sget v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MIN_X:I

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MAX_X:I

    if-gt v0, v2, :cond_0

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v1

    goto :goto_0
.end method

.method public getAnimationEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    return v0
.end method

.method public getSplitMode()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    return v0
.end method

.method public getXpositon()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return v0
.end method

.method public refreshLayouts()Z
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x65

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->sendMessageRefreshed()V

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    if-ne v6, v9, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    :cond_1
    :goto_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    goto :goto_1

    :pswitch_1
    iget-boolean v5, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v5, :cond_6

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    neg-int v5, v0

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    goto :goto_3

    :pswitch_2
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    if-ne v6, v9, :cond_7

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    :cond_7
    :goto_4
    const/4 v3, 0x0

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    iget v7, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_a

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    iget v7, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int/2addr v6, v7

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090083

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_b

    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v5, v4, v5

    sget v6, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    iget v7, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    neg-int v5, v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_6
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    goto :goto_4

    :cond_a
    const/4 v3, 0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_b
    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v5, v4, v5

    sget v6, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    add-int/2addr v5, v6

    neg-int v5, v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveSplitPosition()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_splitbar_position"

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setSplitMode(IZ)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v2, "Mms/SplitManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSplitMode splitMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSplitMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v5, :cond_5

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v5, :cond_3

    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    if-nez v2, :cond_7

    :cond_4
    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-eq v2, v5, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ConversationComposer;->setActionBarHomeAsUp(Z)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ConversationComposer;->setActionBarHomeAsUp(Z)V

    goto :goto_1

    :cond_7
    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v2, :cond_0

    iput-boolean v5, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    iput v5, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne v2, v5, :cond_a

    const/16 v2, -0x28

    iput v2, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    iget-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    neg-int v1, v1

    :goto_2
    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v1

    goto :goto_0

    :cond_9
    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    neg-int v1, v1

    goto :goto_2

    :cond_a
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    goto :goto_3
.end method

.method public setUseSplitMode(Z)V
    .locals 4

    const/4 v2, -0x1

    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const-string v1, "Mms/SplitManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseSplitMode usesplitMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 3

    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    const-string v0, "Mms/SplitManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWidth width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
