.class public Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
.super Landroid/preference/Preference;
.source "SwiftkeyLanguagePreference.java"


# static fields
.field private static mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private static mlanguageID:Ljava/lang/String;


# instance fields
.field private final DOWNLOAD_CANCELLED:I

.field private final DOWNLOAD_FAILED:I

.field private final DOWNLOAD_FAILED_NOT_ENOUGH_SPACE:I

.field private final DOWNLOAD_SUCCESS:I

.field IS_FHD:Z

.field IS_WQHD:Z

.field private final MAX_LANGUAGEPACK_SIZE_MB:J

.field VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

.field private cancelButton:Landroid/widget/Button;

.field private final downloadNotificationBuilder:Landroid/app/Notification$Builder;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private enableCheckBox:Landroid/widget/CheckBox;

.field private languageItemView:Landroid/view/View;

.field private languageNameTitle:Ljava/lang/String;

.field listener:Lcom/touchtype_fluency/util/ProgressListener;

.field private mIsCheckboxDontShowDownloadForRoam:Z

.field private mIsCheckboxDontShowDownloadForWifi:Z

.field private mIsDownloaded:Z

.field private mIsVOHWRenable:Z

.field private final mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

.field private mLanguagePackHashCode:I

.field private final mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private mNetworkConnect:Landroid/content/BroadcastReceiver;

.field private final mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

.field private final mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private statusTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private updateButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    sput-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method public constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V
    .locals 7
    .param p1    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    .param p2    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p3    # Landroid/content/SharedPreferences;
    .param p4    # Z
    .param p5    # Z

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageItemView:Landroid/view/View;

    const/4 v3, 0x0

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsVOHWRenable:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->DOWNLOAD_CANCELLED:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->DOWNLOAD_FAILED:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->DOWNLOAD_SUCCESS:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->DOWNLOAD_FAILED_NOT_ENOUGH_SPACE:I

    const-wide/16 v3, 0x64

    iput-wide v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->MAX_LANGUAGEPACK_SIZE_MB:J

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v3

    const/16 v4, 0x780

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v3

    const/16 v4, 0x438

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IS_FHD:Z

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v3

    const/16 v4, 0xa00

    if-ne v3, v4, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v3

    const/16 v4, 0x5a0

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IS_WQHD:Z

    new-instance v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    invoke-direct {v3, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mNetworkConnect:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    invoke-direct {v3, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    new-instance v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    invoke-direct {v3, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    sput-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    sput-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsVOHWRenable:Z

    iput-boolean p5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mNetworkConnect:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsVOHWRenable:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v3, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    :goto_2
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->notificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IS_FHD:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IS_WQHD:Z

    if-eqz v3, :cond_7

    :cond_1
    const v3, 0x7f0300a2

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    if-nez p4, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_4
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_b

    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    :goto_5
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCurrentVersion()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[TEMP]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    goto/16 :goto_2

    :cond_7
    const v3, 0x7f0300a2

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto/16 :goto_3

    :cond_8
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_9
    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    :cond_b
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    goto :goto_5
.end method

.method private DownloadVOLanguage()V
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "SwiftkeyLanguagePreference.VOlistener : Start to Download VO langaue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$10;

    invoke-direct {v1, p0, v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$10;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1    # Landroid/content/SharedPreferences$Editor;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/widget/CheckBox;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->checkVaildVOLP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadSwiftkeyLanguage(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForRoam:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForRoam:Z

    return p1
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelDownload()V

    return-void
.end method

.method static synthetic access$2000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForWifi:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForWifi:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePackManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V

    return-void
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->processingFailDownload()V

    return-void
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$902(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    return p1
.end method

.method private cancelDownload()V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "> Start to cancel download : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "download-vocur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-vomax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-skmax"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-skcur"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "download-state"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$12;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$12;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v3}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v3}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->cancelDownload()V

    :cond_1
    const v1, 0x7f0e01d9

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private checkVaildVOLP()Z
    .locals 6

    const/4 v1, 0x0

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "text"

    invoke-virtual {v2, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v4, "SamsungIME"

    const-string v5, "SwiftkeyLanguagePreference.checkVaildVOLP : No VO resource. Download fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private createNotification(IIZZIIZ)V
    .locals 13
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Z
    .param p5    # I
    .param p6    # I
    .param p7    # Z

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v9, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e01d7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v9, p2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.touchtype.personalizer.PERSONALIZER_SETTINGS_ACTIVITY"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.diotek.ime.implement.setting.SwiftkeyLanguagesSettings"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v9, 0x20000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {v9, v10, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v9, "ar"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "ur"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v12, 0x7f0e000f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u200e"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_0
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p4, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v10, 0x1080081

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v7, 0x0

    if-nez p5, :cond_3

    mul-int/lit8 v9, p6, 0x64

    div-int/lit8 v7, v9, 0x1

    :goto_1
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v10, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v9, v0, v1, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    :goto_2
    :try_start_0
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->notificationManager:Landroid/app/NotificationManager;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v9, p2, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_2
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v12, 0x7f0e000f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_3
    mul-int/lit8 v9, p6, 0x64

    div-int v7, v9, p5

    goto :goto_1

    :cond_4
    if-eqz p7, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v10, 0x7f020aa8

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_4
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v10, 0x1080082

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_4

    :catch_0
    move-exception v5

    const-string v9, "SamsungIME"

    const-string v10, "Fail to update Notification"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private downloadSwiftkeyLanguage(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    const-string v0, "SamsungIME"

    const-string v1, "SwiftkeyLanguagePreference.listener : Start to Download Swiftkey langaue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$11;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$11;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private downloadlanguagepack()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e021e

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsVOHWRenable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "download-skcur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-skmax"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vocur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vomax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->DownloadVOLanguage()V

    :goto_2
    invoke-direct {p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBar(Z)V

    invoke-direct {p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "download-skcur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-skmax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vocur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vomax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "download-skcur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-skmax"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vocur"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-vomax"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download-state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadSwiftkeyLanguage(Z)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private drawProgressBar(Z)V
    .locals 20
    .param p1    # Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "download-skcur"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string v1, "download-skmax"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v1, "download-vocur"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    const-string v1, "download-vomax"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwiftkeyLanguagePreference-drawProgressBar skcurrent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwiftkeyLanguagePreference-drawProgressBar vocurrent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int v1, v17, v19

    if-nez v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "SwiftkeyLanguagePreference-drawProgressBar avoid ArithmeticException: divide by zero"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    add-int v2, v17, v19

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    add-int v2, v16, v18

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v2, 0x7f0e01da

    move-object/from16 v0, p0

    iget v3, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    const/4 v5, 0x1

    add-int v6, v17, v19

    add-int v7, v16, v18

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->createNotification(IIZZIIZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v13

    const-string v15, ""

    const-string v1, "ar"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fa"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    mul-int/lit8 v1, v10, 0x64

    div-int/2addr v1, v13

    mul-int/lit8 v2, v10, 0x64

    div-int/2addr v2, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->toDigitString(II)Ljava/lang/String;

    move-result-object v15

    :goto_1
    if-eq v10, v13, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    const v2, 0x7f090556

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    const v2, 0x7f090556

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_0

    :cond_4
    mul-int/lit8 v1, v10, 0x64

    div-int/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1
.end method

.method private drawProgressBarComplete(I)V
    .locals 8
    .param p1    # I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const v1, 0x7f0e01d9

    iget v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->createNotification(IIZZIIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const v1, 0x7f0e01da

    iget v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->createNotification(IIZZIIZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const v1, 0x7f0e01db

    iget v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->createNotification(IIZZIIZ)V

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_0

    const v1, 0x7f0e01d8

    iget v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackHashCode:I

    const/16 v5, 0x64

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->createNotification(IIZZIIZ)V

    goto :goto_0
.end method

.method private getDownloadGuideCheckBoxRscId()I
    .locals 1

    const v0, 0x7f080058

    return v0
.end method

.method private getDownloadGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f03003f

    return v0
.end method

.method public static getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v1, "he"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "iw"

    :cond_0
    const-string v1, "en"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "my"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "z1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "0x%08x"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v1, "0x%08x"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isDownloadInProgress()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z
    .locals 1
    .param p1    # Lcom/touchtype_fluency/util/LanguagePack;

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v0

    return v0
.end method

.method private isUpdateAvailable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processingFailDownload()V
    .locals 3

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> Start to processingFailDownload : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->doFailDownload()V

    :cond_0
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private showDownloadingState(Z)V
    .locals 5
    .param p1    # Z

    const v4, 0x7f090556

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHeight(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static final toDigitString(II)Ljava/lang/String;
    .locals 5
    .param p0    # I
    .param p1    # I

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_0

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, "%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateNotificationBar(Z)V
    .locals 6
    .param p1    # Z

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "download-state"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "download-state"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3, v1}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-lez v0, :cond_1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected ChangeSetEnabledState()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected CheckandSettheViewState(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const v1, 0x7f090556

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v0, 0x7f0800db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    const v0, 0x7f0800dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    const v0, 0x7f0800df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    const v0, 0x7f0800dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0800e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    const v0, 0x7f0800de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->ChangeSetEnabledState()V

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/LanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->VOlistener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBar(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isUpdateAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-direct {p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateNotificationBar(Z)V

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateNotificationBar(Z)V

    goto :goto_0
.end method

.method public IntentForDialog(I)V
    .locals 5
    .param p1    # I

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.popupNetworkError"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "network_err_type"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "mobile_data_only"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x34000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "SamsungIME"

    const-string v4, "ActivityNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public MobileDataWarningForRoam()V
    .locals 12

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "first_swiftkey_download_execution_for_roam"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getDownloadGuideLayoutRscId()I

    move-result v3

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getDownloadGuideCheckBoxRscId()I

    move-result v2

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    invoke-virtual {v6, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v10, 0x7f0e025b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f080057

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v10, 0x7f0e025c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0e01d1

    invoke-virtual {v0, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0e0116

    new-instance v10, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$6;

    invoke-direct {v10, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$6;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    new-instance v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$7;

    invoke-direct {v9, p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$7;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public MobileDataWarningForWiFi()V
    .locals 13

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "first_swiftkey_download_execution"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getDownloadGuideLayoutRscId()I

    move-result v3

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getDownloadGuideCheckBoxRscId()I

    move-result v2

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    invoke-virtual {v6, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v10, "VZW"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v11, 0x7f0e01f2

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const v10, 0x7f080057

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v11, 0x7f0e025a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0e01d1

    invoke-virtual {v0, v10, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0e0116

    new-instance v11, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;

    invoke-direct {v11, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    new-instance v10, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$9;

    invoke-direct {v10, p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$9;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const v11, 0x7f0e0259

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageItemView:Landroid/view/View;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->CheckandSettheViewState(Landroid/view/View;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$1;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->updateButton:Landroid/widget/Button;

    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$2;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$2;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageItemView:Landroid/view/View;

    return-void
.end method

.method protected onClick()V
    .locals 8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v3, v4, v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v3, v4, v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    const v2, 0x7f0e01e1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sendAccessibilityEvent(Landroid/view/View;)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    const v4, 0x7f0e01d0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v3, v4, v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;

    const v4, 0x7f0e01cf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_5
    const v2, 0x7f0e01e0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->isDownloadInProgress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadGuideDialog()V

    goto :goto_1
.end method

.method public showDownloadGuideDialog()V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isFlightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileDataOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isRoamming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isDataRoammingOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->MobileDataWarningForRoam()V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isNoSignal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->MobileDataWarningForWiFi()V

    goto :goto_0
.end method
