.class public Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;,
        Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;
    }
.end annotation


# instance fields
.field private final MSG_ZOOM_PERCENTAGE_UPDATE:I

.field private final TAG:Ljava/lang/String;

.field private ctx:Landroid/content/Context;

.field mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field mMagnifierImage:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

.field private mMagnifierSize:Landroid/preference/ListPreference;

.field mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

.field private mMagnifier_settings:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string v0, "ToggleMagnifierPreferenceFragment"

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->MSG_ZOOM_PERCENTAGE_UPDATE:I

    new-instance v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->refreshImageView(I)V

    return-void
.end method

.method private isExclusiveOptionsEnabled()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    or-int v0, v3, v4

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_writing_buddy"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_6
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "any_screen_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const-string v4, "com.google.android.marvin.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method private refreshImageView(I)V
    .locals 3

    const-string v0, "ToggleMagnifierPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshImageView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierImage:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierImage:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->setHoverZoomImageLevel(I)V

    const-string v0, "ToggleMagnifierPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMagnifierImage.setMagnifierLevel(level) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showHoverZoomDisablePopup()V
    .locals 10

    const v9, 0x7f09095d

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090986

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\u200f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v4, "- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f091140

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\u200f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v4, "- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0910f8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "\u200f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v4, "- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090f59

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "\u200f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v4, "- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f091bae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const-string v5, "com.google.android.marvin.talkback"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "\u200f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v4, "- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090a0a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;

    invoke-direct {v6, p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;

    invoke-direct {v6, p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;

    invoke-direct {v5, p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updatedEnableState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierImage:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierImage:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public initSwitch()V
    .locals 7

    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_magnifier"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    :goto_0
    if-ne v2, p2, :cond_1

    const-string v3, "ToggleMagnifierPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged HoverZoom DB is same value with desiredState :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "FmMagnifier"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const v6, 0x7f09095d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const v6, 0x7f09095f

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->isExclusiveOptionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->showHoverZoomDisablePopup()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "accessibility_magnifier"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->initSwitch()V

    const v1, 0x7f0700b2

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_magnifier"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {v4, p0, v5, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setOrder(I)V

    const-string v1, "magnifier_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    new-instance v1, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hover_zoom_value"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v0, v2, :cond_2

    :goto_1
    invoke-direct {v1, p0, v4, v5, v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierImage:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierImage:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierImage:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const-string v1, "magnifier_size"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "hover_zoom_magnifier_size"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v1, "magnifier_size"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v1, "ToggleMagnifierPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange  MagnifierSize -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_magnifier_size"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const-string v1, "ToggleMagnifierPreferenceFragment"

    const-string v2, "onPreferenceChange"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_magnifier"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_magnifier"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method
