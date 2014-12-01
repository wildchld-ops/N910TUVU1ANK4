.class public Lcom/android/settings/widget/SmartSwitchWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SmartSwitchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;,
        Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;,
        Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;
    }
.end annotation


# static fields
.field private static final SMARTALERT_ANIMATION_IMAGE:[I

.field private static final SMARTSTAY_ANIMATION_IMAGE:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

.field private static sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationType:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SmartSwitchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTALERT_ANIMATION_IMAGE:[I

    return-void

    :array_0
    .array-data 4
        0x7f0206fd
        0x7f0206fe
        0x7f0206ff
        0x7f020700
    .end array-data

    :array_1
    .array-data 4
        0x7f020489
        0x7f02048a
        0x7f02048b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    iput v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    iput v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$2;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V

    iput-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04026b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_ALTERNATIVE_SMARTSWITCH_WIDGET"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04026c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0b05e2

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0b05e6

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_0
    const v1, 0x7f0b05d2

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0b05d6

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {v0, p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    return-object v0

    :cond_0
    const v1, 0x7f0b05da

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0b05de

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static checkController(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->register()V

    :cond_0
    return-void
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;->startObserving()V

    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static isEnabled(Landroid/content/Context;I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "master_motion"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    const-string v2, "SmartSwitchWidgetProvider"

    const-string v4, "Motion is disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    const-string v4, "motion_engine"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v4, "motion_pick_up_to_call_out"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_6

    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    sget-object v2, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->isEnabled()Z

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v4, 0x4

    if-ne p1, v4, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "master_motion"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_2
    if-nez v1, :cond_8

    const-string v2, "SmartSwitchWidgetProvider"

    const-string v4, "Motion is disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_1

    :cond_7
    const-string v4, "motion_engine"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :cond_8
    const-string v4, "motion_pick_up"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_9
    const/4 v4, 0x5

    if-ne p1, v4, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "psm_switch"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_1

    :cond_a
    move v2, v3

    goto/16 :goto_1
.end method

.method private showPowerSavingGuideDialog(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSmartAlertGuideDialog(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0401ba

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0195

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v3, 0x7f0b019d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090fb8

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    const-string v3, "SmartSwitchWidgetProvider"

    const-string v4, "Start animation..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    :cond_1
    return-void
.end method

.method private showSmartStayGuideDialog(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f0401bd

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b0195

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b019d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    const v4, 0x7f0b046e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "- "

    const v5, 0x7f091298

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b046f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "- "

    const v5, 0x7f091299

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b0470

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "- "

    const v5, 0x7f09129a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b0471

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "- "

    const v5, 0x7f0914a5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f091292

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    const-string v4, "SmartSwitchWidgetProvider"

    const-string v5, "Start animation..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    iput v7, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    :cond_1
    return-void
.end method

.method private showVoiceCmdGuideDialog(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f04006b

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0141

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0913c8

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0913cb

    new-instance v5, Lcom/android/settings/widget/SmartSwitchWidgetProvider$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$3;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0913cc

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SmartSwitchWidgetProvider"

    const-string v1, "Stop animation..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SmartSwitchWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change animation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTALERT_ANIMATION_IMAGE:[I

    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    array-length v2, v0

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    if-nez v1, :cond_3

    const-wide/16 v1, 0x7d0

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x1f4

    goto :goto_1
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6

    const v5, 0x7f0b05d7

    const v4, 0x7f0b05d5

    const v1, 0x7f0b05d3

    const v3, 0x7f020867

    const v2, 0x7f020866

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02086a

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {p0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020872

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05d9

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_ALTERNATIVE_SMARTSWITCH_WIDGET"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b05e3

    const v1, 0x7f020870

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05e5

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_2
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b05e7

    const v1, 0x7f02086c

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05e9

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_3
    return-void

    :cond_0
    const v0, 0x7f02086b

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f020873

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05d9

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0b05e3

    const v1, 0x7f020871

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05e5

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    :cond_3
    const v0, 0x7f0b05e7

    const v1, 0x7f02086d

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05e9

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0b05db

    const v1, 0x7f020874

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05dd

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_4
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0b05df

    const v1, 0x7f02086e

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05e1

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    :cond_5
    const v0, 0x7f0b05db

    const v1, 0x7f020875

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05dd

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    :cond_6
    const v0, 0x7f0b05df

    const v1, 0x7f02086f

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b05e1

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget-object v2, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;->stopObserving()V

    sput-object v1, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    :cond_0
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->unregister()V

    sput-object v1, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    :cond_1
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v7, "SmartSwitchWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START onReceive()_intent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v3, :cond_2

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateWidget(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    const-string v6, "master_motion"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v3, :cond_4

    const-string v5, "intelligent_sleep_mode"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "pref_smart_stay_noti"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showSmartStayGuideDialog(Landroid/content/Context;)V

    :cond_5
    const-string v6, "intelligent_sleep_mode"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    const/4 v7, 0x2

    if-ne v0, v7, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v3, :cond_7

    const-string v5, "voice_input_control"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    const-string v7, "voiceinputcontrol_showNeverAgain"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showVoiceCmdGuideDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    const-string v6, "voice_input_control"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_9
    const/4 v7, 0x3

    if-ne v0, v7, :cond_b

    if-nez v3, :cond_a

    :goto_1
    invoke-static {v5}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->toggle(Z)V

    goto :goto_0

    :cond_a
    move v5, v6

    goto :goto_1

    :cond_b
    const/4 v7, 0x4

    if-ne v0, v7, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v3, :cond_c

    const-string v5, "motion_pick_up"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "pref_smart_alert_noti"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showSmartAlertGuideDialog(Landroid/content/Context;)V

    :cond_d
    const-string v6, "master_motion"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    const-string v6, "motion_pick_up"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    if-eqz v3, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "psm_switch"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showPowerSavingGuideDialog(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    invoke-static {p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
