.class public Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "CallSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/phone/callsettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    }
.end annotation


# static fields
.field protected static isSearching:Z

.field private static mArrayLinkKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mCheckValue:Z

.field protected static mOpenDetailMenu:Z

.field protected static mOpenDetailMenuKey:Ljava/lang/String;

.field protected static mSettingValue:I


# instance fields
.field private isCreatedAndNotStopped:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsContentChanged:Z

.field private mIsForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenu:Z

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mSettingValue:I

    sput-boolean v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mCheckValue:Z

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSearching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsContentChanged:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsForeground:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsContentChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;)Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;)Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
    .param p1    # Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    return-object p1
.end method

.method private isSIPmenu()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "sip_account_settings_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "sip_receive_calls_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "sip_call_options_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectHeaderforTablet(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "general_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sound_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "voicemail_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sip_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dismissDialog(I)V
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallSettingsPreferenceFragment"

    const-string v1, "Fragment finished. We ignore dismissDialog."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected getActionBar()Landroid/app/ActionBar;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isContentChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsContentChanged:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "com.samsung.android.app.galaxyfinder"

    invoke-static {v3, v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SEARCH_VER_TWO"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "args_from_search"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v3, "extra_from_search"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CallSettingsPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tablet : isSearching = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSearching:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-boolean v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSearching:Z

    if-nez v3, :cond_7

    if-eqz v0, :cond_7

    move v0, v4

    :cond_1
    :goto_1
    const-string v3, "CallSettingsPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extraFromSearch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v0, :cond_8

    sput-boolean v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v4, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSearching:Z

    :cond_2
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v3, "extra_link_key_array"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->selectHeaderforTablet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "CallSettingsPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select header - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - for tablet.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/CallSettingsActivity;

    invoke-virtual {v3, v2}, Lcom/android/phone/callsettings/CallSettingsActivity;->setMetaData(Ljava/lang/String;)V

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    sput-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    :cond_3
    const-string v3, "extra_setting_value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mSettingValue:I

    sget v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mSettingValue:I

    if-ne v3, v4, :cond_4

    move v5, v4

    :cond_4
    sput-boolean v5, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mCheckValue:Z

    sget v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    const-string v3, "CallSettingsPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOpenDetailMenuKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCheckValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mCheckValue:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    move v0, v5

    goto/16 :goto_1

    :cond_8
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    const-string v3, "CallSettingsPreferenceFragment"

    const-string v4, "mArrayLinkKey == null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenu:Z

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsForeground:Z

    const-string v0, "CallSettingsPreferenceFragment"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareDialog(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsForeground:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/CallSettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->setCurrentFragment(Landroid/app/Fragment;)V

    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyfinder"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SEARCH_VER_TWO"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->openSearchDetailMenu()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    return-void
.end method

.method protected openSearchDetailMenu()V
    .locals 14

    sget-boolean v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=== mOpenDetailMenuKey:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentTargetKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v13}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreferenceCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , preferenceAdapter size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-interface {v11, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsSearch === position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSIPmenu()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v8, 0x0

    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not matter to AirplaneMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v8, :cond_7

    instance-of v2, v10, Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_7

    invoke-virtual {v7}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "button_tty_mode_key"

    sget-object v4, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CallSettingsPreferenceFragment"

    const-string v4, "tty_mode, set proper value first"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {p0, v13}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_3
    :goto_2
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v3, v2, :cond_4

    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in this preference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_7
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :: CheckBox = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v5, v10, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAirplaneMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no preference for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method protected registerContentUri(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$1;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$1;-><init>(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method protected removeDialog(I)V
    .locals 3
    .param p1    # I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->getDialogId()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->getDialogId()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method protected resetContentChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mIsContentChanged:Z

    return-void
.end method

.method protected setCancelable(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    # setter for: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->access$202(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    # setter for: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->access$302(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 6
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CallSettingsPreferenceFragment"

    const-string v4, "Fragment finished. We ignore showDialog."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v3, :cond_2

    const-string v3, "CallSettingsPreferenceFragment"

    const-string v4, "Old dialog fragment not null!"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-ne v2, v3, :cond_2

    const-string v3, "CallSettingsPreferenceFragment"

    const-string v4, "But, same dialog. We ignore showDialog command."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    if-nez v3, :cond_3

    const-string v3, "CallSettingsPreferenceFragment"

    const-string v4, "Fragment is not visible. We ignore showDialog."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;-><init>(Lcom/android/phone/callsettings/DialogCreatable;I)V

    iput-object v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1    # Landroid/app/Fragment;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Landroid/os/Bundle;

    const v5, 0x7f090054

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7
    .param p1    # Landroid/app/Fragment;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Landroid/os/Bundle;
    .param p5    # I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "CallSettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected unregisterContentUri()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
