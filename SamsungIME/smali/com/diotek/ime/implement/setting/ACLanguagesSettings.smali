.class public Lcom/diotek/ime/implement/setting/ACLanguagesSettings;
.super Landroid/preference/PreferenceActivity;
.source "ACLanguagesSettings.java"


# static fields
.field private static final AVAILABLE_ORDER:I = 0x3e8

.field private static final DOWNLOAD_AVAILABLE:I = 0x0

.field private static final DOWNLOAD_COMPLETE:I = 0x1

.field private static final DOWNLOAD_COMPLETE_OREDR:I = 0x0

.field private static final DOWNLOAD_ING:I = 0x2

.field private static final KL_DELETE_ACTIVITY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ACDownloadManager"

.field private static final UPDATE_AVAILABLE:I = 0x3

.field private static final WILL_BE_DOWNLOAD:I = 0x4


# instance fields
.field private mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

.field public mAppointedDownloadLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemNumber:I

.field public mDownloadLanguageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field public mDownloadedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field public mDownloadingLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsCheckboxDontShowDownloadList:Z

.field public mIsConnected:Z

.field mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;",
            ">;"
        }
    .end annotation
.end field

.field mPreferenceListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;",
            ">;"
        }
    .end annotation
.end field

.field public mPreloadedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSupportedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field mainScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mCheckedItemNumber:I

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z

    return v0
.end method

.method static synthetic access$002(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mIsCheckboxDontShowDownloadList:Z

    return p1
.end method

.method private deletelanguae()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getLanguageList()V
    .locals 8

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    const/16 v3, 0x100

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getXt9LanguageId(I)I

    move-result v3

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadLanguageIdList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getSupportedLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getDownloadableLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getDownloadedLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getDownloadingLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getUpdateableLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getAppointedDownloadLanguageList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    return-void
.end method

.method private getListUpdateGuideCheckBoxRscId()I
    .locals 1

    const v0, 0x7f080058

    return v0
.end method

.method private getListUpdateGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f030040

    return v0
.end method

.method private isLanguageDeleteState()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    iget v5, v2, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    iget v5, v2, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updateLPlist()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getSupportedLanguageList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v0, v3, v1

    if-le v0, v4, :cond_0

    const v2, 0x7f0e01e3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    if-ne v0, v4, :cond_1

    const v2, 0x7f0e01e4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v2, 0x7f0e01e5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public addCurrentDownloadingListener(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method addNewDownloadableLanguageIntoDownloadableLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewDownloadedLanguageIntoDownloadedLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewDownloadingLanguageIntoDownloadedLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewUpdateableLanguageIntoUpdateableLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public cancelDownloadForFrench(I)V
    .locals 5

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :cond_1
    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateCancelState()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->stopProgressBarThread()V

    :cond_3
    return-void
.end method

.method public downloadFrenchLanguage(ILjava/lang/String;Z)V
    .locals 9

    const/4 v8, -0x1

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->download(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1, v3}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1, v3}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->dummyDownload(ILjava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v6

    if-ne v6, p1, :cond_3

    if-eqz p3, :cond_4

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getLanguageId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v8, :cond_3

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateDownloadState()V

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateDownloadState()V

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->download(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getProgressBarListener()Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->setUpdateState(IZ)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6, p1, v3}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    goto :goto_0
.end method

.method public getCheckedItemNumber()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mCheckedItemNumber:I

    return v0
.end method

.method public getKeyByLanguageId(I)Ljava/lang/String;
    .locals 10

    const-string v2, ""

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v6

    if-ne p1, v6, :cond_0

    const-string v6, "0x%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getXt9LanguageId(I)I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9LanguageId(I)I

    move-result v0

    return v0
.end method

.method public isAlreadyDownloading(I)Z
    .locals 5

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v3

    if-eq v3, p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v12, "languageIdList"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    :cond_0
    const/4 v7, -0x1

    const-string v12, "com.sec.android.inputmethod_preferences"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v11

    if-nez v9, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    const/high16 v12, 0x66720000

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getXt9LanguageId(I)I

    move-result v12

    if-ne v7, v12, :cond_7

    const/4 v5, 0x0

    const v12, 0x66724652

    if-ne v8, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    const v13, 0x66724341

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_2
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->removeDownloadedLanguageFromDownloadedLanguageList(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->addNewDownloadableLanguageIntoDownloadableLanguageList(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v12, v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->deleteLanguage(I)V

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getKeyByLanguageId(I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    :cond_3
    :goto_4
    const/4 v4, 0x0

    :goto_5
    array-length v12, v11

    if-ge v4, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget-object v13, v11, v4

    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9LanguageId(I)I

    move-result v12

    if-ne v12, v7, :cond_4

    const-string v12, "0x%08x"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v15, v11, v4

    invoke-virtual {v15}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "0x%08x"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v15, v11, v4

    invoke-virtual {v15}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    const v12, 0x66724341

    if-ne v8, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    const v13, 0x66724652

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->removeDownloadedLanguageFromDownloadedLanguageList(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->addNewDownloadableLanguageIntoDownloadableLanguageList(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v12, v7}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->deleteLanguage(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getKeyByLanguageId(I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    const-string v12, "ACDownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onActivityResult after mDownloadableLanguageList : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "ACDownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onActivityResult after mDownloadedLanguageList : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "ACDownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onActivityResult after mUpdateableLanguageList : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f0300b9

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const-string v4, "select_language_list"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getACManager()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->start()V

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadLanguageIdList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceList:Ljava/util/List;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    const-string v4, "downloaded"

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "downloadable"

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "updateable"

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate after mDownloadableLanguageList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate after mDownloadedLanguageList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate after mUpdateableLanguageList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ACDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate after mAppointedDownloadLanguageList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const-string v4, "first_swiftkey_download_list_execution"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "swiftkey_download_list_execution"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->showListUpdateGuideDialog()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0e009f

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getLanguageList()V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e01cd

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020916

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->isLanguageDeleteState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02090e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return v4

    :cond_0
    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02090f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v2, "ACDownloadManager"

    const-string v3, "onOptionsItemSelected updateLPlist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0e01e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->updateLPlist()V

    goto :goto_0

    :sswitch_2
    const-string v2, "ACDownloadManager"

    const-string v3, "onOptionsItemSelected deletelanguae"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->deletelanguae()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0e009f

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getLanguageList()V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0e01cd

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020916

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->isLanguageDeleteState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02090e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return v4

    :cond_0
    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02090f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->rebuildLanguageList()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method

.method public rebuildLanguageList()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceGroup;->removeAll()V

    const v18, 0x7f0300b9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const-string v18, "select_language_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getLanguageList()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v7, 0x2

    const/16 v17, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v16

    const/4 v5, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    move-object v3, v12

    array-length v13, v3

    const/4 v6, 0x0

    move v8, v7

    :goto_0
    if-ge v6, v13, :cond_f

    aget-object v11, v3, v6

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getXt9LanguageId(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mSupportedLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    move v7, v8

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/4 v4, 0x2

    :goto_2
    const-string v18, "0x%08x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    new-instance v15, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v15, v0, v11, v1, v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;Lcom/diotek/ime/framework/common/Language;II)V

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v7, v8, 0x1

    add-int v18, v14, v8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const-string v18, "fr"

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v4, v0, :cond_3

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->addCurrentDownloadingListener(I)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/4 v4, 0x4

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x3

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/high16 v18, 0x66720000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getXt9LanguageId(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/4 v14, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v14, 0x3e8

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v14, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mAppointedDownloadLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/4 v4, 0x4

    goto/16 :goto_2

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreloadedLanguageList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v14, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_d
    const/16 v14, 0x3e8

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mPreferenceListMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-virtual {v15, v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->setCurrentState(I)V

    goto/16 :goto_3

    :cond_f
    return-void
.end method

.method removeDownloadableLanguageFromDownloadableLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeDownloadedLanguageFromDownloadedLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeDownloadingLanguageFromDownloadedLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadingLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeUpdateableLanguageFromUpdateableLanguageList(I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setCheckedItemNumber(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mCheckedItemNumber:I

    return-void
.end method

.method public showListUpdateGuideDialog()V
    .locals 11

    const v10, 0x7f0e01f1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getListUpdateGuideLayoutRscId()I

    move-result v2

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getListUpdateGuideCheckBoxRscId()I

    move-result v1

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e01f0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f080059

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v8, 0x7f0e01f5

    new-instance v9, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$1;

    invoke-direct {v9, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$1;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0e0116

    new-instance v9, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$2;

    invoke-direct {v9, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$2;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    new-instance v8, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$3;

    invoke-direct {v8, p0, v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings$3;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0e01f3

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateOrder(Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v4, 0x3e8

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    invoke-virtual {v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v2

    if-nez v2, :cond_1

    if-ge v0, v4, :cond_0

    add-int/lit16 v0, v0, 0x3e8

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v2, v1, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v2

    if-ne v2, v6, :cond_2

    if-le v0, v4, :cond_0

    add-int/lit16 v0, v0, -0x3e8

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getCurrentState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-nez p2, :cond_0

    if-ge v0, v4, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getXt9LanguageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-virtual {v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {v1, v6}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->setCurrentState(I)V

    goto :goto_0
.end method
