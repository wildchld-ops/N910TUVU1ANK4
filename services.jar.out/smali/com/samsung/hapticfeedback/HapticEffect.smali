.class public Lcom/samsung/hapticfeedback/HapticEffect;
.super Ljava/lang/Object;
.source "HapticEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;
    }
.end annotation


# static fields
.field public static final BRUSH:I = 0x2

.field public static final CHINESE_BRUSH:I = 0x1

.field public static final INK:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "HapticEffect"

.field public static final MARKER:I = 0x4

.field public static final PENCIL:I = 0x0

.field public static final STYLE_DEFAULT_STYLE:I = 0x1

.field public static final STYLE_SHARP:I = 0x2

.field public static final STYLE_SMOOTH:I = 0x0

.field public static final STYLE_STRONG:I = 0x1


# instance fields
.field private InsLevel:I

.field private MDRatio:J

.field private aa:D

.field private aa1:D

.field private aa2:D

.field private distance:D

.field private effectStrength:I

.field private imm_devHandle:Lcom/immersion/EffectHandle;

.field private levelToMagnitude:[I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDevice:Lcom/immersion/Device;

.field private mDeviceLevel:I

.field private mEnableInSettingMenu:Z

.field private mIVTBuffer:Lcom/immersion/IVTBuffer;

.field private mIVTPack:Lcom/samsung/hapticfeedback/effect/IVTPack;

.field private mImmVibe:Lcom/immersion/android/ImmVibe;

.field private mImmVibeTouchMagnitude:I

.field private mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

.field private mTemp:I

.field private m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

.field private magnitudeLevel:I

.field private maxDistance:D

.field private maxMagnitude:I

.field private returnValue:Lcom/immersion/EffectHandle;

.field private timeLineIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->effectStrength:I

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibe:Lcom/immersion/android/ImmVibe;

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->levelToMagnitude:[I

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxMagnitude:I

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->InsLevel:I

    iput v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    iput-boolean v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->InitializeLib(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xbb8
        0x1194
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/samsung/hapticfeedback/HapticEffect;->effectStrength:I

    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibe:Lcom/immersion/android/ImmVibe;

    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;

    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->levelToMagnitude:[I

    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxMagnitude:I

    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->InsLevel:I

    iput v5, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    iput-boolean v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->InitializeLib(Landroid/content/Context;)V

    mul-int v0, p2, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int v1, p3, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxDistance:D

    iget v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxMagnitude:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxDistance:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-direct {v0, p0, v4}, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;-><init>(Lcom/samsung/hapticfeedback/HapticEffect;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->isEnableSettingMenu(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0xbb8
        0x1194
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method private InitializeLib(Landroid/content/Context;)V
    .locals 10

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/hapticfeedback/effect/IVTPack;

    invoke-direct {v0}, Lcom/samsung/hapticfeedback/effect/IVTPack;-><init>()V

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTPack:Lcom/samsung/hapticfeedback/effect/IVTPack;

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    :try_start_0
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/immersion/MagSweepEffectDefinition;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/immersion/MagSweepEffectDefinition;-><init>(IIIIIIII)V

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    return-void

    :catch_0
    move-exception v9

    const-string v0, "HapticEffect"

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/samsung/hapticfeedback/HapticEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/hapticfeedback/HapticEffect;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->isEnableSettingMenu(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isEnableSettingMenu(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spen_feedback_haptic"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_writing_haptic_feedback"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private setMagtAttributes()V
    .locals 11

    const/16 v5, 0xfa0

    const/4 v4, 0x5

    const-wide v9, 0x40c3880000000000L

    const-wide/high16 v6, 0x3fd0000000000000L

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    iget v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    if-le v2, v4, :cond_3

    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    :goto_0
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    :cond_0
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    double-to-int v2, v2

    if-ge v2, v5, :cond_4

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    iget v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v9

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    iget-wide v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    :cond_1
    :goto_1
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v3}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->levelToMagnitude:[I

    iget v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    aget v2, v2, v3

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    double-to-int v2, v2

    if-lt v2, v5, :cond_1

    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    mul-int/lit16 v2, v2, 0xfa0

    div-int/lit16 v2, v2, 0x2710

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa2:D

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    cmpl-double v2, v2, v9

    if-lez v2, :cond_5

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    :goto_3
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    iget-wide v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    iput v8, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    goto :goto_1

    :cond_5
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    neg-double v2, v2

    const-wide/high16 v4, 0x4010000000000000L

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    iget-wide v6, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa2:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    mul-double/2addr v4, v6

    const-wide v6, 0x40b7700000000000L

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "HapticEffect"

    const-string v3, "Haptic Service Error Detected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :try_start_1
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_2
.end method


# virtual methods
.method public closeDevice()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v1}, Lcom/immersion/Device;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public geCurrenttMagEffectType()Lcom/immersion/MagSweepEffectDefinition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    return-object v0
.end method

.method public getDeviceLv()I
    .locals 1

    iget v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDeviceLevel:I

    return v0
.end method

.method public getMDRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public playEffect()V
    .locals 4

    iget v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    iget v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HapticEffect"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HapticEffect"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playEffect(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, p1}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HapticEffect"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playEffect(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0, p1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    return-void
.end method

.method public playEffect(Lcom/immersion/PeriodicEffectDefinition;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0, p1}, Lcom/immersion/Device;->playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)Lcom/immersion/EffectHandle;

    return-void
.end method

.method public playEffectByDistance(D)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    mul-double v2, p1, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    const-wide/high16 v0, 0x3ff0000000000000L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/high16 v0, 0x4000000000000000L

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    goto :goto_0
.end method

.method public playEffectByDistance(DF)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    mul-double v2, p1, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    const-wide/high16 v0, 0x3ff0000000000000L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/high16 v0, 0x4000000000000000L

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    goto :goto_0
.end method

.method public playEffectByDistance(FFFF)V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x3ff0000000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x4000000000000000L

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    goto :goto_0
.end method

.method public playEffectByDistance(FFFFF)V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x3ff0000000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x4000000000000000L

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    goto :goto_0
.end method

.method public playMagEffect()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    return-void
.end method

.method public setEffectType(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    :cond_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v3, v4

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/hapticfeedback/HapticEffect;->setEffectType([B)V

    return-void

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    const-string v5, "HapticEffect"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v5, "HapticEffect"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v5

    :catch_2
    move-exception v1

    const-string v6, "HapticEffect"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v1

    const-string v5, "HapticEffect"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method public setEffectType([B)V
    .locals 4

    new-instance v3, Lcom/immersion/IVTBuffer;

    invoke-direct {v3, p1}, Lcom/immersion/IVTBuffer;-><init>([B)V

    iput-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    iget-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v3}, Lcom/immersion/IVTBuffer;->getEffectCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v3, v0}, Lcom/immersion/IVTBuffer;->getEffectType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIntensityLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->InsLevel:I

    return-void
.end method

.method public setMagEffectType(IIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p2}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p3}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p4}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p5}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p6}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    return-void
.end method

.method public setMagEffectType(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    return-void
.end method

.method public setMagEffectType([I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x3

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x4

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x5

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    return-void
.end method

.method public setMagIntensity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p1}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    return-void
.end method

.method public setPlayEffectStrength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->effectStrength:I

    return-void
.end method

.method public stopAllEffect()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v2}, Lcom/immersion/Device;->stopAllPlayingEffects()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "HapticEffect"

    const-string v3, "Haptic Service Error Detected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :try_start_1
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
