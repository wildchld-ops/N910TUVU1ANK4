.class public Lcom/android/settings/flipfont/FontListActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static DEBUG:Z

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private isEasySettingsCall:Z

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.monotype.android.font.chococooky"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.monotype.android.font.tinkerbell"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.udrgothic"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.udmincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mBuyButtonClicked:Z

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mFileCopying:Z

    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mQuestionDialogFontSize:I

    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogLeftPadding:I

    iput v3, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogTopPadding:I

    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogRightPadding:I

    iput v3, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogBottomPadding:I

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/flipfont/FontListActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/flipfont/FontListActivity;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/flipfont/FontListActivity;

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c70

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090c71

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/flipfont/FontListActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/flipfont/FontListActivity$7;-><init>(Lcom/android/settings/flipfont/FontListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/flipfont/FontListActivity$8;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListActivity$8;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FlipFont"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkFont - checking apkname"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v0, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FlipFont"

    const-string v2, "**Apk name matches list**"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FlipFont"

    const-string v3, "checkFont - check if valid certificate"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    new-array v3, v4, [Landroid/content/pm/Signature;

    new-instance v5, Landroid/content/pm/Signature;

    const-string v6, ""

    invoke-direct {v5, v6}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v1

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_3
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_1
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_4
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    sget-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate for: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate issued by: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The certificate is valid from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate SN# "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generated with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v2, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FlipFont"

    const-string v2, "**Certificate data is correct**"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_5

    :cond_6
    move v1, v4

    goto/16 :goto_1

    :cond_7
    move-object v0, v3

    goto/16 :goto_3
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "selectedFont"

    const-string v3, "MONOTYPE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public loadPreferences()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v1, "prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SelectDialogIsActive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    const-string v1, "SavedClickedItem"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 3

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v6, 0x0

    const/4 v4, -0x2

    if-ne p2, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->cancel()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c5b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v4, 0x14000020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c5a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-boolean v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mBuyButtonClicked:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const v6, 0x7f090c6f

    const/4 v8, 0x0

    const v7, 0x7f090c55

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "PRABHAT"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(I)V

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02013b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v4, 0x7f0901ba

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f0b01a5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    invoke-static {}, Lcom/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EasySettingsBundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  Intent is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  bundle is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EasySettings"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    :goto_1
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEasySettingsCall  :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c56

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_2
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MONOTYPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    if-eqz v4, :cond_9

    const-string v3, "HelveticaNeueRegular.xml"

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    if-gez v4, :cond_2

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    :cond_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    const v4, 0x7f090c5c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->loadPreferences()V

    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    if-eqz v4, :cond_4

    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->selectDialog()V

    :cond_4
    const-string v4, "PRABHAT"

    const-string v5, "onCreate() - end"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v4, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_6
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  bundle is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  Intent is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    if-ne p3, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    iget-boolean v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    const/4 v0, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settings/flipfont/FontListActivity;->badFontDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ge p3, v8, :cond_3

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090c58

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0900b5

    new-instance v6, Lcom/android/settings/flipfont/FontListActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListActivity$2;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0900b6

    new-instance v7, Lcom/android/settings/flipfont/FontListActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListActivity$1;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/flipfont/FontListActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListActivity$3;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090c59

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090c57

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v5, :cond_4

    new-instance v5, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v5}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_4
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public onOkButtonPressed()Z
    .locals 33

    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    move-result v28

    const/4 v0, 0x0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    move/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    sget-boolean v28, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v28, :cond_1

    const-string v28, "FlipFont"

    const-string v29, "**onOkButtonPressed - bad font**"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v28, 0x0

    :goto_0
    return v28

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    :goto_1
    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    new-instance v28, Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListActivity;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    new-instance v15, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v15}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    if-eqz v26, :cond_4

    const-string v28, "default"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "sans.loc"

    const-string v30, "default#default"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v26, :cond_6

    const-string v28, "FontListActivity"

    const-string v29, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v25

    const-string v28, ".xml"

    const-string v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v28, " "

    const-string v29, "-"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    const/16 v27, 0x0

    if-eqz v25, :cond_7

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings/flipfont/TypefaceFile;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    const/16 v29, 0x80

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "fonts/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v15, v14, v0, v1}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v13

    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception in file operation, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "sans.loc"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "#"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    new-instance v21, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->hashCode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    iput v0, v10, Landroid/content/res/Configuration;->FlipFont:I

    invoke-interface {v6, v10}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v29, "activity"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const/16 v28, 0x32

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/16 v17, 0x1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_8
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const-string v28, "com.android.settings"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.samsung.music"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.sec.android.app.music"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "com.infraware.polarisoffice"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.polarisoffice4"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.polarisviewer4"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.polarisoffice5"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.polarisviewer5"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_9

    const-string v28, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_a

    :cond_9
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_1
    move-exception v11

    const-string v28, "FontListActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Intentionally left blank, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    const-string v29, "com.sec.android.easysettings"

    invoke-static/range {v28 .. v29}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    const-string v28, "FontListActivity"

    const-string v29, "FORCE CLOSE PACKAGE :  com.sec.android.easysettings"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v28, "com.sec.android.easysettings"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string v28, "FontListActivity"

    const-string v29, "RESTARTING PACKAGE :  com.sec.android.easysettings"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v28, "com.sec.android.easysettings"

    const-string v29, "com.sec.android.easysettings.EasySettingsHomeActivity"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v28, "com.android.settings"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/System;->exit(I)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->restartLater()V

    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_c
    const-string v28, "com.android.settings"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public restartLater()V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SelectDialogIsActive"

    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "SavedClickedItem"

    iget v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public selectDialog()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->loadPreferences()V

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    if-ge v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090c58

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0900b5

    new-instance v6, Lcom/android/settings/flipfont/FontListActivity$5;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListActivity$5;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0900b6

    new-instance v7, Lcom/android/settings/flipfont/FontListActivity$4;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListActivity$4;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/flipfont/FontListActivity$6;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListActivity$6;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090c59

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090c57

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
