.class public Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMagazineCardMainView.java"


# instance fields
.field private final MESSAGE_ADD_CARD:I

.field private final MESSAGE_REMOVE_CARD:I

.field private final MESSAGE_UPDATE_CARD:I

.field private final TAG:Ljava/lang/String;

.field private final WAKEUP_ACTION_BLOCK_DURATION:J

.field private final WAKEUP_DURATION:J

.field private mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

.field private mCardContainerLayout:Landroid/widget/LinearLayout;

.field private mCardUIFrame:Landroid/view/View;

.field private mCategoryFilter:I

.field private mIsWakeupActionBlocked:Z

.field private mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

.field private mKeyguardMagazineAnimationController:Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

.field private mListView:Landroid/widget/LinearLayout;

.field private mMagazineCardControlHandler:Landroid/os/Handler;

.field private mPriorityTable:[[I

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mUnblockWakeupActionHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    const/16 v7, 0xa

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "KeyguardMagazineCardMainView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    iput v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardContainerLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardUIFrame:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    aput v3, v2, v4

    aput v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    aput v3, v2, v4

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_ADD_CARD:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_REMOVE_CARD:I

    const/16 v0, 0x3eb

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_UPDATE_CARD:I

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_DURATION:J

    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_ACTION_BLOCK_DURATION:J

    iput-boolean v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mUnblockWakeupActionHandler:Landroid/os/Handler;

    const-string v0, "KeyguardMagazineCardMainView"

    const-string v1, "KeyguardMagazineCardMainView(context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setMagazineCardFilter()V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/16 v7, 0xa

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "KeyguardMagazineCardMainView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    iput v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardContainerLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardUIFrame:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    aput v3, v2, v4

    aput v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    aput v3, v2, v4

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_ADD_CARD:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_REMOVE_CARD:I

    const/16 v0, 0x3eb

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_UPDATE_CARD:I

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_DURATION:J

    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_ACTION_BLOCK_DURATION:J

    iput-boolean v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mUnblockWakeupActionHandler:Landroid/os/Handler;

    const-string v0, "KeyguardMagazineCardMainView"

    const-string v1, "KeyguardMagazineCardMainView(context, attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setMagazineCardFilter()V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/16 v7, 0xa

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "KeyguardMagazineCardMainView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    iput v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardContainerLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardUIFrame:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [I

    sget v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    aput v2, v1, v4

    aput v7, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    aput v3, v2, v4

    aput v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    aput v3, v2, v4

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_ADD_CARD:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_REMOVE_CARD:I

    const/16 v0, 0x3eb

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->MESSAGE_UPDATE_CARD:I

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_DURATION:J

    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->WAKEUP_ACTION_BLOCK_DURATION:J

    iput-boolean v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mUnblockWakeupActionHandler:Landroid/os/Handler;

    const-string v0, "KeyguardMagazineCardMainView"

    const-string v1, "KeyguardMagazineCardMainView(context, attrs, defStyle)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setMagazineCardFilter()V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->removeCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->updateCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    return p1
.end method

.method private addCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 5
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->findCardViewById(I)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v2, "KeyguardMagazineCardMainView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCard : Card already exist - R"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getCardViewPriorityPosition(Lcom/samsung/android/magazinecard/MagazineCardRecord;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;I)V

    goto :goto_0
.end method

.method private addCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;I)V
    .locals 5
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .param p2    # I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "KeyguardMagazineCardMainView"

    const-string v3, "addCardView : Incorrect card or list view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isDisplayableCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "KeyguardMagazineCardMainView"

    const-string v3, "addCardView : Not include this card"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030017

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v0, p1, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->build(Lcom/samsung/android/magazinecard/MagazineCardRecord;Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V

    if-gez p2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getCardViewPriorityPosition(Lcom/samsung/android/magazinecard/MagazineCardRecord;)I

    move-result p2

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private comparePriority(II)I
    .locals 6
    .param p1    # I
    .param p2    # I

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v3

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    aget-object v4, v4, v0

    aget v1, v4, v5

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v3

    and-int/2addr v4, p2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mPriorityTable:[[I

    aget-object v4, v4, v0

    aget v2, v4, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eq v1, v2, :cond_3

    const-string v3, "KeyguardMagazineCardMainView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "comparePriority : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v3, v1, v2

    :goto_1
    return v3

    :cond_3
    const-string v4, "KeyguardMagazineCardMainView"

    const-string v5, "comparePriority : same priority"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private findCardViewById(I)I
    .locals 5
    .param p1    # I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->getCardRecordId()I

    move-result v4

    if-eq v4, p1, :cond_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method private getCardViewPriorityPosition(Lcom/samsung/android/magazinecard/MagazineCardRecord;)I
    .locals 7
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    const/4 v4, -0x1

    const-string v5, "KeyguardMagazineCardMainView"

    const-string v6, "getCardViewPriorityPosition"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    if-eqz v2, :cond_2

    iget-object v5, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->getCardCategory()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->comparePriority(II)I

    move-result v1

    if-ltz v1, :cond_2

    const-string v4, "KeyguardMagazineCardMainView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCardViewPriorityPosition : index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "KeyguardMagazineCardMainView"

    const-string v6, "getCardViewPriorityPosition : index -1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0
.end method

.method private getCurUserId()I
    .locals 6

    const v2, 0x7fffffff

    const v0, 0x7fffffff

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    const-string v3, "KeyguardMagazineCardMainView"

    const-string v4, "setMagazineCardFilter : Incorrect user id"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v3, "KeyguardMagazineCardMainView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMagazineCardFilter : Cannot get current user id e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0
.end method

.method private getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1    # Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method private init(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isMagazineCardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

    invoke-direct {v0}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardMagazineAnimationController:Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardMagazineAnimationController:Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    return-void
.end method

.method private isDisplayableCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    const-string v1, "KeyguardMagazineCardMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisplayableCard : Filter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KeyguardMagazineCardMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisplayableCard - Card : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getCurUserId()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v1, v1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    iget-object v2, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v2, v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string v1, "KeyguardMagazineCardMainView"

    const-string v2, "isDisplayableCard : Can be displayed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMagazineCardEnabled()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 1
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->removeCardView(I)V

    goto :goto_0
.end method

.method private removeCardView(I)V
    .locals 2
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->findCardViewById(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method private setMagazineCardFilter()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    or-int/2addr v3, v4

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    or-int/2addr v3, v4

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    or-int/2addr v3, v4

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getCurUserId()I

    move-result v0

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_1
    if-eqz v1, :cond_5

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    or-int/2addr v3, v4

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_email"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_EMAIL:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    :cond_2
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_todayschedule"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_TODAYS_SCHEDULE:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    :cond_3
    const-string v2, "KeyguardMagazineCardMainView"

    const-string v3, "MagizneCard is Disabled: Ultra power saving mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_weather"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_WEATHER:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    :cond_6
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_todayschedule"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_TODAYS_SCHEDULE:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    :cond_7
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_news"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEWS:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    :cond_8
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_social"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_SOCIAL:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    :cond_9
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_hereandnow"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_HERE_N_NOW:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    :cond_a
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_email"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_EMAIL:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    :cond_b
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "category_value_todaybirthday"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_TODAY_BIRTHDAY:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCategoryFilter:I

    goto/16 :goto_0
.end method

.method private updateCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 4
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v1, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->findCardViewById(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "KeyguardMagazineCardMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCard : Card is not exist - R"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->updateCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_0
.end method

.method private updateCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .locals 4
    .param p1    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->findCardViewById(I)I

    move-result v0

    const-string v1, "KeyguardMagazineCardMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCardView : card index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    if-ltz v0, :cond_1

    iget v1, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->removeCardView(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCardView(Lcom/samsung/android/magazinecard/MagazineCardRecord;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardMagazineAnimationController:Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method


# virtual methods
.method public clearAllCardView()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isPointInCard(II)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KeyguardMagazineCardMainView"

    const-string v4, "not in point in card"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v3, :cond_1

    const-string v3, "KeyguardMagazineCardMainView"

    const-string v4, "wake up by user touch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v4, 0x1388

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mUnblockWakeupActionHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public getFocusedCard()Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move-object v0, v3

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpanded()Z

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardScaleDown()Z

    move-result v4

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method public getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    return-object v0
.end method

.method public getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p1    # Landroid/view/View;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method public isPointInCard(II)Z
    .locals 7
    .param p1    # I
    .param p2    # I

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eq v6, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isMagazineCardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->unregisterCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->isMagazineCardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->initViews()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mCardChangedListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->registerCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->refreshCardView()V

    goto :goto_0
.end method

.method public refreshCardView()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->clearAllCardView()V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getCards()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "KeyguardMagazineCardMainView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshCardView : Card Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetFocusedMagazineCardState()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getFocusedCard()Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->restoreDefaultCardState()V

    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setKeyguardHostView(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardHostView;

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    return-void
.end method

.method public setOnKeyguardDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    :cond_0
    return-void
.end method
