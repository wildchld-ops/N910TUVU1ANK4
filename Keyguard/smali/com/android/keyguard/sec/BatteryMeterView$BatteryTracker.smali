.class Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryTracker"
.end annotation


# instance fields
.field private mHealth:I

.field private mIsPlugged:Z

.field private mIsTestmode:Z

.field private mLevel:I

.field private mOnline:I

.field private mPlugType:I

.field private mStatus:I

.field private mTechnologyStr:Ljava/lang/String;

.field private mTemperature:I

.field private mVoltage:I

.field final synthetic this$0:Lcom/android/keyguard/sec/BatteryMeterView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/BatteryMeterView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/keyguard/sec/BatteryMeterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mIsTestmode:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mOnline:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/BatteryMeterView;Lcom/android/keyguard/sec/BatteryMeterView$1;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/sec/BatteryMeterView;
    .param p2    # Lcom/android/keyguard/sec/BatteryMeterView$1;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/keyguard/sec/BatteryMeterView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    iget v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mLevel:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    iget v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mPlugType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mIsTestmode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mIsTestmode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    iget v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mStatus:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    iget v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mHealth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mIsPlugged:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mIsTestmode:Z

    if-eqz v6, :cond_1

    const-string v6, "testmode"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v6, 0x42c80000

    const-string v9, "level"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    const-string v9, "scale"

    const/16 v10, 0x64

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    float-to-int v1, v6

    iget v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mLevel:I

    if-eq v6, v1, :cond_7

    move v3, v7

    :goto_1
    if-eqz v3, :cond_2

    iput v1, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mLevel:I

    :cond_2
    iget v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mPlugType:I

    const-string v9, "plugged"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_8

    move v4, v7

    :goto_2
    if-eqz v4, :cond_3

    const-string v6, "plugged"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mPlugType:I

    :cond_3
    iget v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mPlugType:I

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mIsPlugged:Z

    iget v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mHealth:I

    const-string v9, "health"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_a

    move v2, v7

    :goto_4
    if-eqz v2, :cond_4

    const-string v6, "health"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mHealth:I

    :cond_4
    iget v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mStatus:I

    const-string v9, "status"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_b

    move v5, v7

    :goto_5
    if-eqz v5, :cond_5

    const-string v6, "status"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mStatus:I

    :cond_5
    const-string v6, "technology"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mTechnologyStr:Ljava/lang/String;

    const-string v6, "voltage"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mVoltage:I

    const-string v6, "temperature"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mTemperature:I

    sget-object v6, Lcom/android/keyguard/sec/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_BATTERY_CHANGED : level:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " health:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mHealth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    if-eqz v5, :cond_0

    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/keyguard/sec/BatteryMeterView;

    const v9, 0x7f060101

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/keyguard/sec/BatteryMeterView;

    # getter for: Lcom/android/keyguard/sec/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/keyguard/sec/BatteryMeterView;->access$000(Lcom/android/keyguard/sec/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/keyguard/sec/BatteryMeterView;

    # getter for: Lcom/android/keyguard/sec/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/keyguard/sec/BatteryMeterView;->access$000(Lcom/android/keyguard/sec/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_7
    move v3, v8

    goto/16 :goto_1

    :cond_8
    move v4, v8

    goto/16 :goto_2

    :cond_9
    move v6, v8

    goto/16 :goto_3

    :cond_a
    move v2, v8

    goto/16 :goto_4

    :cond_b
    move v5, v8

    goto/16 :goto_5

    :cond_c
    const-string v6, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v7, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->mIsTestmode:Z

    iget-object v6, p0, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/keyguard/sec/BatteryMeterView;

    new-instance v7, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker$1;

    invoke-direct {v7, p0}, Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker$1;-><init>(Lcom/android/keyguard/sec/BatteryMeterView$BatteryTracker;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
