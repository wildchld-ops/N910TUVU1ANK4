.class public Lcom/android/keyguard/sec/SecEmergencyStatusContainer;
.super Landroid/widget/LinearLayout;
.source "SecEmergencyStatusContainer.java"


# static fields
.field public static final EMERGENCY_TIMER_ICON:[I

.field private static cfmsService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field private mEmergencyBatteryText:Landroid/widget/TextView;

.field private mEmergencyDevider:Landroid/view/View;

.field private mEmergencyTimerImage:Landroid/widget/ImageView;

.field private mEmergencyTimerText:Landroid/widget/TextView;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mStrEmergencyTimerD:Ljava/lang/String;

.field private mStrEmergencyTimerH:Ljava/lang/String;

.field private mStrEmergencyTimerM:Ljava/lang/String;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->EMERGENCY_TIMER_ICON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0201b7
        0x7f0201b8
        0x7f0201b9
        0x7f0201ba
        0x7f0201bb
        0x7f0201bc
        0x7f0201bd
        0x7f0201be
        0x7f0201bf
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;-><init>(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;-><init>(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;-><init>(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;II)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecEmergencyStatusContainer;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->updateEmergencyContainer(II)V

    return-void
.end method

.method private updateEmergencyContainer(II)V
    .locals 12
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v9, "SecEmergencyStatusContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive() : batteryLevel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v9, 0x5

    if-le p1, v9, :cond_8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :try_start_0
    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v9, :cond_2

    const-string v9, "CustomFrequencyManagerService"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v9

    sput-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_2
    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v9}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v2

    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->cfmsService:Landroid/os/ICustomFrequencyManager;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/os/ICustomFrequencyManager;->getRemainUsageTime(I)I

    move-result v3

    const-string v9, "SecEmergencyStatusContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive() : returned value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_0
    const v8, 0x7f0201b7

    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->EMERGENCY_TIMER_ICON:[I

    array-length v9, v9

    add-int/lit8 v10, p1, -0x1

    div-int/lit8 v10, v10, 0xb

    sub-int/2addr v9, v10

    add-int/lit8 v7, v9, -0x1

    if-gez v7, :cond_4

    const/4 v7, 0x0

    :cond_4
    sget-object v9, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->EMERGENCY_TIMER_ICON:[I

    aget v8, v9, v7

    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyBatteryText:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyBatteryText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    int-to-float v9, v2

    const/high16 v10, 0x43100000

    div-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x41200000

    div-float v4, v9, v10

    div-int/lit8 v5, v2, 0x3c

    rem-int/lit8 v6, v2, 0x3c

    if-nez v3, :cond_9

    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    const v10, 0x7f0600fe

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v9, "SecEmergencyStatusContainer"

    const-string v10, "onReceive() : getStandbyTime() failed by RemoteException"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v9, "SecEmergencyStatusContainer"

    const-string v10, "onReceive() : getStandbyTime() failed"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_8
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_9
    const/high16 v9, 0x3f800000

    cmpl-float v9, v4, v9

    if-ltz v9, :cond_a

    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_a
    iget-object v9, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerM:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_mode"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    :goto_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ultra_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    const v2, 0x7f0b0146

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyBatteryText:Landroid/widget/TextView;

    const v2, 0x7f0b0149

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerText:Landroid/widget/TextView;

    const v2, 0x7f0b0148

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyTimerImage:Landroid/widget/ImageView;

    const v2, 0x7f0b0147

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mEmergencyDevider:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerD:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerH:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mStrEmergencyTimerM:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_2
.end method
