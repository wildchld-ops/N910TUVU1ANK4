.class public Lcom/android/settings/motion2013/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final isKnoxUser:Z


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

.field private mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

.field private mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

.field private mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

.field private final mMotionObserver:Landroid/database/ContentObserver;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPan:Landroid/preference/SwitchPreferenceScreen;

.field private mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

.field private mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportBrowser:Z

.field private mTilt:Landroid/preference/SwitchPreferenceScreen;

.field private mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

.field private mTurnOver:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/motion2013/MotionSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/MotionSettings$1;-><init>(Lcom/android/settings/motion2013/MotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/MotionSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastArcMotionQuickGlanceChanged(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.ARC_MOTION_QUICK_GLANCE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "MotionsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastArcMotionQuickGlanceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z
    .locals 21

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "motion_zooming"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    :goto_0
    const/16 v16, 0x0

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "motion_panning"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    :goto_1
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "motion_pan_to_browse_image"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    :goto_2
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    if-nez v8, :cond_3

    const-string v19, "motion_shake"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    :goto_3
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    if-nez v8, :cond_4

    const-string v19, "motion_double_tap"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    :goto_4
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    if-eqz v9, :cond_5

    const-string v19, "motion_pick_up"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    :goto_5
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-nez v8, :cond_6

    sget-boolean v19, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-nez v19, :cond_6

    const-string v19, "motion_pick_up_to_call_out"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    :goto_6
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    if-nez v8, :cond_7

    sget-boolean v19, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-nez v19, :cond_7

    const-string v19, "motion_overturn"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    :goto_7
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    or-int v19, v17, v16

    or-int v19, v19, v11

    or-int v19, v19, v10

    or-int v19, v19, v14

    or-int v19, v19, v7

    or-int v19, v19, v15

    or-int v19, v19, v6

    or-int v19, v19, v18

    or-int v19, v19, v5

    or-int v19, v19, v4

    or-int v19, v19, v3

    or-int v19, v19, v13

    or-int v19, v19, v12

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    const/16 v19, 0x1

    :goto_8
    return v19

    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_5
    const/4 v15, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/16 v18, 0x0

    goto :goto_7

    :cond_8
    const/16 v19, 0x0

    goto :goto_8
.end method


# virtual methods
.method public isAllMotionDisabled()Z
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_zooming"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    :goto_0
    const/4 v15, 0x0

    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_panning"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    :goto_1
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_pan_to_browse_image"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    :goto_2
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_shake"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    :goto_3
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_double_tap"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    :goto_4
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_pick_up"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    :goto_5
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    if-nez v7, :cond_6

    sget-boolean v18, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_pick_up_to_call_out"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    :goto_6
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    if-nez v7, :cond_7

    sget-boolean v18, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_overturn"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    :goto_7
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    or-int v18, v16, v15

    or-int v18, v18, v10

    or-int v18, v18, v9

    or-int v18, v18, v13

    or-int v18, v18, v6

    or-int v18, v18, v14

    or-int v18, v18, v5

    or-int v18, v18, v17

    or-int v18, v18, v4

    or-int v18, v18, v3

    or-int v18, v18, v2

    or-int v18, v18, v12

    or-int v18, v18, v11

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    const/16 v18, 0x1

    :goto_8
    return v18

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    const/16 v17, 0x0

    goto :goto_7

    :cond_8
    const/16 v18, 0x0

    goto :goto_8
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/MotionSettings$2;-><init>(Lcom/android/settings/motion2013/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    const v14, 0x7f070086

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    new-instance v14, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v14, "tilt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "tilt_to_scroll_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "pan"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "pan_to_browse_image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "shake"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "double_tap"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "pick_up"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "pick_up_to_call_out"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "turn_over"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "arc_motion_ripple_effect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "arc_motion_quick_glance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "arc_motion_music_playback"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "peek_view_albums_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    const-string v14, "peek_chapter_preview"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    const/4 v8, 0x0

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v8, v8, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v14, 0x1

    if-le v8, v14, :cond_1

    const-string v14, "tilt_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const/4 v6, 0x0

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v6, v6, 0x1

    :cond_3
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v6, v6, 0x1

    :cond_4
    const/4 v14, 0x1

    if-le v6, v14, :cond_5

    const-string v14, "pan_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v14, "shake_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    const/4 v7, 0x0

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_b
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    if-nez v2, :cond_c

    sget-boolean v14, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-eqz v14, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_d
    const/4 v14, 0x1

    if-le v7, v14, :cond_e

    const-string v14, "pick_up_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    if-nez v2, :cond_f

    sget-boolean v14, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-eqz v14, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v14, "turn_over_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "com.android.browser"

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    if-nez v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    const v15, 0x7f090fc0

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v14, :cond_12

    sget v14, Lcom/android/settings/motion2013/MotionSettings;->mSettingValue:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "master_motion"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v14, "extra_parent_preference_key"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v14, Lcom/android/settings/motion2013/MotionSettings;->mSettingValue:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    const/4 v13, 0x1

    :goto_0
    const-string v14, "tilt"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_12
    :goto_1
    return-void

    :cond_13
    const/4 v13, 0x0

    goto :goto_0

    :cond_14
    const-string v14, "tilt_to_scroll_list"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_15
    const-string v14, "pan"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_16
    const-string v14, "pan_to_browse_image"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_17
    const-string v14, "shake"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_18
    const-string v14, "double_tap"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_19
    const-string v14, "pick_up"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1a
    const-string v14, "pick_up_to_call_out"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1b
    const-string v14, "turn_over"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f090d2d

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020256

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090fad

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_zooming"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    :cond_1
    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_tilt_to_list_scrolling"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_panning"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pan_to_browse_image"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_shake"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_double_tap"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_ripple_effect"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_quick_glance"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v1, v2, :cond_d

    move v4, v2

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto :goto_2

    :cond_e
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_music_playback"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_peek_view_albums_list"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_10
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_peek_chapter_preview"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 11

    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iput-boolean v5, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "master_motion"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    iget-object v2, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    :cond_1
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "master_motion"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    :goto_0
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_zooming"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_tilt_to_list_scrolling"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v4

    :goto_3
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_panning"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v4

    :goto_4
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pan_to_browse_image"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v6, v4

    :goto_5
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_shake"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    move v6, v4

    :goto_6
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_double_tap"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_a

    move v6, v4

    :goto_7
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v4

    :goto_8
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up_to_call_out"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    move v6, v4

    :goto_9
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_overturn"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_d

    move v6, v4

    :goto_a
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "arc_motion_ripple_effect"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_e

    move v6, v4

    :goto_b
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "arc_motion_quick_glance"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_f

    move v6, v4

    :goto_c
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "arc_motion_music_playback"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_10

    move v6, v4

    :goto_d
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_view_albums_list"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_11

    move v6, v4

    :goto_e
    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_chapter_preview"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_12

    :goto_f
    invoke-virtual {v6, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_3
    move v0, v5

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    move v6, v5

    goto/16 :goto_2

    :cond_6
    move v6, v5

    goto/16 :goto_3

    :cond_7
    move v6, v5

    goto/16 :goto_4

    :cond_8
    move v6, v5

    goto/16 :goto_5

    :cond_9
    move v6, v5

    goto/16 :goto_6

    :cond_a
    move v6, v5

    goto/16 :goto_7

    :cond_b
    move v6, v5

    goto/16 :goto_8

    :cond_c
    move v6, v5

    goto/16 :goto_9

    :cond_d
    move v6, v5

    goto :goto_a

    :cond_e
    move v6, v5

    goto :goto_b

    :cond_f
    move v6, v5

    goto :goto_c

    :cond_10
    move v6, v5

    goto :goto_d

    :cond_11
    move v6, v5

    goto :goto_e

    :cond_12
    move v4, v5

    goto :goto_f
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method
