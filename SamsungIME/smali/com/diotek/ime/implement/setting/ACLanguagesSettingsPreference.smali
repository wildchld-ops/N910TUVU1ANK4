.class public Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;
.super Landroid/preference/Preference;
.source "ACLanguagesSettingsPreference.java"

# interfaces
.implements Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;


# static fields
.field private static final DOWNLOAD_AVAILABLE:I = 0x0

.field private static final DOWNLOAD_COMPLETE:I = 0x1

.field private static final DOWNLOAD_ING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "KLDownloadManager"

.field private static final UPDATE_AVAILABLE:I = 0x3

.field private static final WILL_BE_DOWNLOAD:I = 0x4


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field public enableCheckBox:Landroid/widget/CheckBox;

.field private key:Ljava/lang/String;

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;"
        }
    .end annotation
.end field

.field mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

.field public mCurrentState:I

.field private mIsCheckboxDontShowDownloadForRoam:Z

.field private mIsCheckboxDontShowDownloadForWifi:Z

.field private mLanguage:Lcom/diotek/ime/framework/common/Language;

.field public mLanguageName:Ljava/lang/String;

.field private mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field public mXt9LanguageCode:I

.field private final parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

.field public selfView:Landroid/view/View;

.field private statusTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private updateButton:Landroid/widget/Button;

.field public updateFlag:I


# direct methods
.method public constructor <init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettings;Lcom/diotek/ime/framework/common/Language;II)V
    .locals 4
    .param p1    # Lcom/diotek/ime/implement/setting/ACLanguagesSettings;
    .param p2    # Lcom/diotek/ime/framework/common/Language;
    .param p3    # I
    .param p4    # I

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    iput v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    const v0, 0x7f0300a2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    const-string v0, "0x%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iput p3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iput p4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    invoke-static {}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->register()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const-string v1, "selected"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/diotek/ime/framework/common/Language;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/diotek/ime/implement/setting/ACLanguagesSettings;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    return-void
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForRoam:Z

    return v0
.end method

.method static synthetic access$502(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForRoam:Z

    return p1
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForWifi:Z

    return v0
.end method

.method static synthetic access$602(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mIsCheckboxDontShowDownloadForWifi:Z

    return p1
.end method

.method private cancelDownload()V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->cancelDownload(I)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->unregister(I)V

    const v0, 0x7f0e01d9

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
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

.method private register()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    return-void
.end method

.method private startDownload()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->download(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->setUpdateState(IZ)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->unregister(I)V

    return-void
.end method


# virtual methods
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

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "KLDownloadManager"

    const-string v4, "ActivityNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public MobileDataWarningForRoam()V
    .locals 13

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "first_swiftkey_download_execution_for_roam"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideLayoutRscId()I

    move-result v3

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideCheckBoxRscId()I

    move-result v2

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    invoke-virtual {v6, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const v11, 0x7f0e025b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f080057

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const v11, 0x7f0e025c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0e01d1

    invoke-virtual {v0, v10, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0e0116

    new-instance v11, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$3;

    invoke-direct {v11, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$3;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    new-instance v10, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$4;

    invoke-direct {v10, p0, v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$4;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public MobileDataWarningForWiFi()V
    .locals 13

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "first_swiftkey_download_execution"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideLayoutRscId()I

    move-result v3

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideCheckBoxRscId()I

    move-result v2

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

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

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

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

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const v11, 0x7f0e025a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0e01d1

    invoke-virtual {v0, v10, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0e0116

    new-instance v11, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$5;

    invoke-direct {v11, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$5;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    new-instance v10, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$6;

    invoke-direct {v10, p0, v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$6;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const v11, 0x7f0e0259

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method protected checkAndSetViewState(Landroid/view/View;)V
    .locals 10
    .param p1    # Landroid/view/View;

    const v9, 0x7f090556

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const v4, 0x7f0800db

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->titleTextView:Landroid/widget/TextView;

    const v4, 0x7f0800dd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    const v4, 0x7f0800df

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    const v4, 0x7f0800dc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    const v4, 0x7f0800e0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    const v4, 0x7f0800de

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->titleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    return v0
.end method

.method public getLanguageId()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v0

    return v0
.end method

.method public getProgressBarListener()Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;
    .locals 0

    return-object p0
.end method

.method public getXt9LanguageCode()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$1;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    new-instance v1, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference$2;-><init>(Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onClick()V
    .locals 9

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v7, 0x3

    if-eq v4, v7, :cond_1

    const v2, 0x7f0e01dc

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v4

    if-lt v4, v8, :cond_2

    if-nez v1, :cond_2

    const v2, 0x7f0e01e0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v7, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "KLDownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v4, v5, :cond_7

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    if-nez v1, :cond_6

    :goto_3
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3

    :cond_7
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const-string v4, "fr"

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget v5, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v7, v6}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->downloadFrenchLanguage(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateDownloadState()V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v4, v5, :cond_c

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_a

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    if-nez v1, :cond_b

    :goto_5
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_a
    move v4, v6

    goto :goto_4

    :cond_b
    move v5, v6

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->showDownloadGuideDialog()V

    goto/16 :goto_0
.end method

.method public setCurrentState(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    return-void
.end method

.method public showDownloadGuideDialog()V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isFlightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileDataOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isRoamming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isDataRoammingOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForRoam()V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isNoSignal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForWiFi()V

    goto :goto_0
.end method

.method public updateCancelState()V
    .locals 2

    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    goto :goto_0
.end method

.method public updateDownloadState()V
    .locals 2

    iget v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->isAlreadyDownloading(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    goto :goto_1
.end method

.method public updated(I)V
    .locals 7
    .param p1    # I

    const v6, 0x66724652

    const v4, 0x66724341

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    iput v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    const-string v1, "fr"

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const-string v2, "0x%08x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const v0, 0x7f0e01d8

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/diotek/ime/implement/setting/ACLanguagesSettings;

    const-string v2, "0x%08x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/diotek/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    goto :goto_1
.end method
