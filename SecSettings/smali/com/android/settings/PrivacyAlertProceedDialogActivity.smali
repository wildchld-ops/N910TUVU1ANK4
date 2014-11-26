.class public Lcom/android/settings/PrivacyAlertProceedDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertProceedDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private CarrierBrandalpha:Ljava/lang/String;

.field private CarrierHomepage:Ljava/lang/String;

.field private CarrierLegalEnPath:Ljava/lang/String;

.field private CarrierLegalEnURL:Ljava/lang/String;

.field private CarrierLegalEsPath:Ljava/lang/String;

.field private CarrierLegalEsURL:Ljava/lang/String;

.field private CarrierLegalKoPath:Ljava/lang/String;

.field private CarrierLegalKoURL:Ljava/lang/String;

.field private CarrierLegalViPath:Ljava/lang/String;

.field private CarrierLegalViURL:Ljava/lang/String;

.field private CarrierLegalZhPath:Ljava/lang/String;

.field private CarrierLegalZhURL:Ljava/lang/String;

.field bFileExist:Ljava/lang/Boolean;

.field bTest:Ljava/lang/Boolean;

.field private mView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, "/carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    const-string v0, "/carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    const-string v0, "/carrier/data/app/Settings/privacy_ko.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    const-string v0, "/carrier/data/app/Settings/privacy_vi.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    const-string v0, "/carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    const-string v0, "file:///carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    const-string v0, "file:///carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    const-string v0, "file:///carrier/data/app/Settings/privacy_ko.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    const-string v0, "file:///carrier/data/app/Settings/privacy_vi.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    const-string v0, "file:///carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040049

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b00ea

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    const-string v4, ""

    :try_start_0
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "ril.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_0
    :goto_0
    const-string v6, "PrivacyAlertProceedDialogActivity"

    const-string v7, "createView : "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_UseChameleon"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v10, :cond_10

    const-string v6, "PrivacyAlertProceedDialogActivity"

    const-string v7, "TAG_CSCFEATURE_COMMON_USECHAMELEON : true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentLang : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "/mnt/sdcard/Download/privacy_en.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    const-string v6, "/mnt/sdcard/Download/privacy_es.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    const-string v6, "/mnt/sdcard/Download/privacy_ko.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    const-string v6, "/carrier/data/app/Settings/privacy_vi.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    const-string v6, "/carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    const-string v6, "file:///mnt/sdcard/Download/privacy_en.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    const-string v6, "file:///mnt/sdcard/Download/privacy_es.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    const-string v6, "file:///mnt/sdcard/Download/privacy_ko.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    const-string v6, "file:///carrier/data/app/Settings/privacy_vi.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    const-string v6, "file:///carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    :cond_1
    const-string v6, "es"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists1 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "db_chameleon_carrierhomepage"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "db_chameleon_brandalpha"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const v6, 0x7f091594

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    :cond_3
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const v6, 0x7f091595

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    :cond_5
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bFileExist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "312530"

    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "XAS"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    :cond_6
    const v6, 0x7f091592

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v8, v7, v10

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-object v5

    :catch_0
    move-exception v2

    const-string v6, "PrivacyAlertProceedDialogActivity"

    const-string v7, "Reading failed for sales code"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_8
    const-string v6, "ko"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists2 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_a
    const-string v6, "vi"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists3 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_c
    const-string v6, "zh"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists4 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_e
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists5 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_10
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_11
    const v6, 0x7f091593

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_12
    iget-object v5, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    goto/16 :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f09157a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
