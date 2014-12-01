.class public Lcom/android/settings/SelectItemDisplay;
.super Landroid/app/Activity;
.source "SelectItemDisplay.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SelectItemDisplay$ViewHolder;,
        Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;
    }
.end annotation


# instance fields
.field private isKeepDisplay:Z

.field private mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNetworkPopup:Landroid/widget/LinearLayout;

.field private mOpenCoverPopup:Landroid/widget/LinearLayout;

.field private mPedometerDBKey:Ljava/lang/String;

.field private mSHealthItentExtra_type:Ljava/lang/String;

.field private mShortcutCameraDBKey:Ljava/lang/String;

.field private mUseLocationPopup:Landroid/widget/LinearLayout;

.field private mWeatherAgreed:Z

.field private mWeatherDBKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SelectItemDisplay;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    return-object v0
.end method

.method private checkGuidePopupAvailable(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_0

    const-string v0, "com.android.settings.SViewCoverPopup.ShortcutCamera"

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "DoNotShowDialog"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    return v0

    :cond_0
    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_1

    const-string v0, "com.android.settings.SViewCoverPopup.Weather"

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.SViewCoverPopup.Pedometer"

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private clickItem(I)V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x7d1

    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1

    move v1, v8

    :goto_0
    const-string v10, "SelectItemDisplay"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick - Camera Shortcut:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_3
    return-void

    :cond_1
    move v1, v9

    goto :goto_0

    :cond_2
    move v8, v9

    goto :goto_1

    :cond_3
    const/16 v10, 0x7d2

    if-ne p1, v10, :cond_11

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    move v5, v8

    :goto_4
    const-string v10, "SelectItemDisplay"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick, CurrentLocation : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / Weather state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v10, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    if-nez v10, :cond_5

    if-nez v5, :cond_5

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_2

    :cond_4
    move v5, v9

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    if-nez v5, :cond_6

    move v10, v8

    :goto_5
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "START"

    if-nez v5, :cond_7

    move v10, v8

    :goto_6
    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "PACKAGE"

    const-string v11, "com.sec.android.sviewcover"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "CP"

    const-string v11, "Kweather"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :goto_7
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_show_info"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "START"

    if-nez v5, :cond_c

    :goto_8
    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "PACKAGE"

    const-string v9, "com.android.keyguard"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "CP"

    const-string v9, "Kweather"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_6
    move v10, v9

    goto :goto_5

    :cond_7
    move v10, v9

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "START"

    if-nez v5, :cond_9

    move v10, v8

    :goto_9
    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "PACKAGE"

    const-string v11, "com.sec.android.sviewcover"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "CP"

    const-string v11, "Cmaweather"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7

    :cond_9
    move v10, v9

    goto :goto_9

    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "START"

    if-nez v5, :cond_b

    move v10, v8

    :goto_a
    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "PACKAGE"

    const-string v11, "com.sec.android.sviewcover"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "CP"

    const-string v11, "Accuweather"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_b
    move v10, v9

    goto :goto_a

    :cond_c
    move v8, v9

    goto :goto_8

    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_f

    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "START"

    if-nez v5, :cond_e

    :goto_b
    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "PACKAGE"

    const-string v9, "com.android.keyguard"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "CP"

    const-string v9, "Cmaweather"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_e
    move v8, v9

    goto :goto_b

    :cond_f
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "START"

    if-nez v5, :cond_10

    :goto_c
    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "PACKAGE"

    const-string v9, "com.android.keyguard"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "CP"

    const-string v9, "Accuweather"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_10
    move v8, v9

    goto :goto_c

    :cond_11
    const/16 v10, 0x7d4

    if-ne p1, v10, :cond_14

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_message"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_12

    move v2, v8

    :goto_d
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_message"

    if-nez v2, :cond_13

    :goto_e
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_12
    move v2, v9

    goto :goto_d

    :cond_13
    move v8, v9

    goto :goto_e

    :cond_14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "shealth_pedometer_status_running"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "shealth_profile_initialized"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_15

    move v4, v8

    :goto_f
    const-string v10, "SelectItemDisplay"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick - walk_mate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " shealth_pedometer_status_running:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " shealth_profile_initialized:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v8, :cond_19

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    if-nez v4, :cond_16

    move v10, v8

    :goto_10
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick pedometerstatus-1 walk_mate-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_17

    move v10, v8

    :goto_11
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":sendBroadcast "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.app.shealth.COVER"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "visibility"

    if-nez v4, :cond_18

    :goto_12
    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "type"

    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_15
    move v4, v9

    goto :goto_f

    :cond_16
    move v10, v9

    goto :goto_10

    :cond_17
    move v10, v9

    goto :goto_11

    :cond_18
    move v8, v9

    goto :goto_12

    :cond_19
    if-nez v4, :cond_1b

    if-nez v7, :cond_1a

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->requestAccessibilityFocus()Z

    :goto_13
    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iput-boolean v9, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "SelectItemDisplay"

    const-string v10, "onItemClick walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.shealth.COVER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "visibility"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "type"

    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_13

    :cond_1b
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    if-nez v4, :cond_1c

    move v10, v8

    :goto_14
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemClick walk_mate-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_1d

    move v10, v8

    :goto_15
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": sendBroadcast "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.app.shealth.COVER"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "visibility"

    if-nez v4, :cond_1e

    :goto_16
    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "type"

    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1c
    move v10, v9

    goto :goto_14

    :cond_1d
    move v10, v9

    goto :goto_15

    :cond_1e
    move v8, v9

    goto :goto_16
.end method

.method public static getUseLocationAgreed(Landroid/content/Context;)I
    .locals 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-nez p0, :cond_0

    move v9, v8

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "SHOW_USE_LOCATION_POPUP"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private saveSharedPreferences(I)V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_0

    const-string v0, "com.android.settings.SViewCoverPopup.ShortcutCamera"

    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DoNotShowDialog"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_1

    const-string v0, "com.android.settings.SViewCoverPopup.Weather"

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.SViewCoverPopup.Pedometer"

    goto :goto_0
.end method


# virtual methods
.method public CoverOpen()V
    .locals 7

    const/high16 v6, 0x10800000

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.shealth.COVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "visibility"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "type"

    iget-object v3, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SelectInfoCoverSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen(), call the WeatherSettings"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WeatherSettingsFragmentActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "sview"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const-string v2, "sview"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public getBackgroundColor()I
    .locals 11

    const/16 v10, 0x77

    const/16 v9, 0x6b

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    if-ne v3, v7, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    :cond_0
    :goto_0
    const/16 v4, 0xef

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x7d1

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7d2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7d3

    if-ne p1, v1, :cond_3

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const-string v1, "DoNotShow"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    const-string v1, "SelectItemDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", donotshow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/SelectItemDisplay;->saveSharedPreferences(I)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v24, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/LayoutInflater;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v16, 0x4080000

    const/high16 v23, 0x400000

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "automatic_unlock"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string v24, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/KeyguardManager;

    invoke-virtual/range {v19 .. v19}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v6, v0, :cond_0

    or-int v16, v16, v23

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v25, v0

    const/high16 v26, 0x100000

    or-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    const-wide/16 v25, 0x1770

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    const-wide/16 v25, 0x0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    new-instance v25, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual/range {v24 .. v25}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v24, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    const v24, 0x7f040050

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v24, 0x7f0b010a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/settings/SelectItemDisplay$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$1;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v24, 0x7f0b010c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/settings/SelectItemDisplay$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$2;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v24, 0x7f0b010e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/settings/SelectItemDisplay$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$3;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v24, 0x7f0b0105

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    const v24, 0x7f0b0106

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "sview_color_wallpaper"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v3, v0, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v24, 0x4d

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_c

    const-string v24, "set_shortcuts_mode"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    const-string v24, "lock_additional_weather"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    const-string v24, "lock_additional_steps"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    const-string v24, "WALKMATE_TMR"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    :goto_1
    const v24, 0x7f0b0107

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const v24, 0x7f090d9a

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v24, 0x7f0b00b0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    new-instance v24, Lcom/android/settings/SelectItemDisplay$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$4;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v24, 0x7f0b0108

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    const/16 v21, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.sec.android.app.shealth"

    const/16 v26, 0x5

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/16 v17, 0x1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.bst.airmessage"

    const/16 v26, 0x5

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const/4 v4, 0x1

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v24

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    if-eqz v17, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-nez v24, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz v21, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-nez v24, :cond_4

    const-string v24, "com.sec.android.app.shealth.CHECK_INIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    new-array v13, v4, [I

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v24

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    const v24, 0x7f0913bf

    aput v24, v13, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0913bf

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v12, v4

    add-int/lit8 v4, v4, 0x1

    :cond_5
    const v24, 0x7f090d97

    aput v24, v13, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d98

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v12, v4

    add-int/lit8 v4, v4, 0x1

    if-eqz v21, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-nez v24, :cond_6

    const-string v24, "com.sec.android.app.shealth.CHECK_INIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    const v24, 0x7f090d9d

    aput v24, v13, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d9e

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v12, v4

    add-int/lit8 v4, v4, 0x1

    :cond_6
    if-eqz v17, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-nez v24, :cond_7

    const v24, 0x7f090d9f

    aput v24, v13, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d9f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v12, v4

    add-int/lit8 v4, v4, 0x1

    :cond_7
    new-instance v24, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v13, v12, v2}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;-><init>(Lcom/android/settings/SelectItemDisplay;[I[Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v20, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    const/4 v15, 0x1

    :try_start_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    if-eqz v15, :cond_8

    new-instance v24, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v24, Lcom/android/settings/SelectItemDisplay$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$5;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    :cond_8
    return-void

    :cond_9
    packed-switch v3, :pswitch_data_0

    const v24, 0x7f02069d

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :pswitch_0
    const v24, 0x7f02069e

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_1
    const v24, 0x7f02069f

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_2
    const v24, 0x7f0206a0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_3
    const v24, 0x7f0206a1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_4
    const v24, 0x7f0206a2

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_5
    const v24, 0x7f0206a3

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_6
    const v24, 0x7f0206a4

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getBackgroundColor()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "sview_color_wallpaper"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_b

    const/16 v18, 0x1

    :goto_6
    if-eqz v18, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v24, 0x4d

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_b
    const/16 v18, 0x0

    goto :goto_6

    :cond_c
    const-string v24, "weather_cover"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    const-string v24, "walk_mate"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    const-string v24, "WALKMATE"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    goto/16 :goto_1

    :catch_0
    move-exception v5

    const/16 v21, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v5

    const/16 v17, 0x0

    goto/16 :goto_3

    :catch_2
    move-exception v5

    const/4 v15, 0x0

    goto/16 :goto_4

    :catch_3
    move-exception v5

    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "SelectItemDisplay"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/32 v6, 0x7f0913bf

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const/16 v1, 0x7d1

    const v3, 0x7f0913bf

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    :goto_0
    const-string v6, "SelectItemDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick, Shortcut Camera - state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 v6, 0x7d4

    if-ne v1, v6, :cond_8

    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    :goto_2
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    const-wide/32 v6, 0x7f090d97

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    :goto_3
    const v3, 0x7f090d97

    const/16 v1, 0x7d2

    const-string v6, "SelectItemDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick, weather - state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_3

    :cond_4
    const-wide/32 v6, 0x7f090d9f

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_message"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    :goto_4
    const v3, 0x7f090d9f

    const/16 v1, 0x7d4

    const-string v6, "SelectItemDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick, air message - state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v2, v5

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v2, v4

    :goto_5
    const v3, 0x7f090d9d

    const/16 v1, 0x7d3

    const-string v6, "SelectItemDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick, Pedometer - state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    move v2, v5

    goto :goto_5

    :cond_8
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x7d2

    if-ne v1, v6, :cond_9

    iget-boolean v6, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    if-nez v6, :cond_9

    if-nez v2, :cond_9

    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->checkGuidePopupAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "SelectItemDisplay"

    const-string v7, "onItemClick, SViewCoverPopup"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.SViewCoverPopup"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "enable"

    if-nez v2, :cond_a

    :goto_6
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "titleId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_a
    move v4, v5

    goto :goto_6

    :cond_b
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "SelectItemDisplay"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    if-nez v0, :cond_1

    const-string v0, "SelectItemDisplay"

    const-string v1, "onPause - call the finish"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/android/settings/SelectItemDisplay;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->CoverOpen()V

    goto :goto_1
.end method
