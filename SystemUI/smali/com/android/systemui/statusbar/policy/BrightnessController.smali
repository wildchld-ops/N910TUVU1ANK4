.class public Lcom/android/systemui/statusbar/policy/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BrightnessController"


# instance fields
.field private mAllowSettingsChanges:Z

.field private mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

.field private mAutomatic:Z

.field private mAutomaticAvailable:Z

.field private mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

.field private mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

.field private mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckboxArea:Landroid/view/View;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private final mIcon:Landroid/widget/ImageView;

.field private mMDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPower:Landroid/os/IPowerManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSeekBar:Landroid/view/View;

.field private mSlider:Landroid/widget/SeekBar;

.field private mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private final mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 3

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0800a0

    invoke-virtual {p3, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 19

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$5;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMDMReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/BrightnessController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    invoke-virtual {v13}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    invoke-virtual {v13}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    const v2, 0x7f080099

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f08009a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticAvailable:Z

    const-string v2, "sensor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v15, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v14

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_1

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v16

    const/4 v2, 0x5

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticAvailable:Z

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v2, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    :goto_3
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    sub-int v3, v18, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    const/16 v4, 0x64

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v6

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/16 v2, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitMax(I)V

    div-int/lit8 v2, v8, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitValue(I)V

    div-int/lit8 v2, v8, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitText(I)V

    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_brightness_detail"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const v2, 0x7f08009d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSeekBar:Landroid/view/View;

    const v2, 0x7f08009f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const v2, 0x7f080096

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mCheckboxArea:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessController$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$2;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightnessEnabledState()V

    :cond_3
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "edm.intent.action.allow.settings"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMDMReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v17

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->hideToggle()V

    goto/16 :goto_3

    :catch_1
    move-exception v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    move/from16 v18, v0

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->resetObservers()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/CurrentUserTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/app/enterprise/RestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightnessEnabledState()V

    return-void
.end method

.method private resetAutomaticBrightnessObserver()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private resetAutomaticObserver()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private resetBrightnessObserver()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private resetObservers()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->resetBrightnessObserver()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->resetAutomaticObserver()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->resetAutomaticBrightnessObserver()V

    return-void
.end method

.method private setBrightness(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessEnabledState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSeekBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSeekBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mCheckboxArea:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAllowSettingsChanges:Z

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMode(I)V

    if-nez p3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    add-int v2, p4, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightness(I)V

    if-nez p2, :cond_2

    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessController$3;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController$3;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v3, :cond_2

    mul-int/lit8 v2, p4, 0x14

    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessController$4;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController$4;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onInit(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->stopTracking()V

    return-void
.end method
