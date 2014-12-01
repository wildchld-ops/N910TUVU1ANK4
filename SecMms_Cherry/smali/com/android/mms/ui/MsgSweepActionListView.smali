.class public Lcom/android/mms/ui/MsgSweepActionListView;
.super Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.source "MsgSweepActionListView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MsgSweepActionListView"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mSweepActionOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const-string v0, "Mms/MsgSweepActionListView"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method

.method private setSweepActionOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    return-void
.end method

.method private setSweepActionOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    return-void
.end method


# virtual methods
.method public addViewInLayoutMsg(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/MsgSweepActionListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mSweepActionOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MsgSweepActionListView;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionOff()V

    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionOn()V

    goto :goto_0
.end method
