.class public Lcom/android/mms/rcs/RcsNewFeatureActivity;
.super Landroid/preference/PreferenceActivity;
.source "RcsNewFeatureActivity.java"


# static fields
.field private static final KEY_RCS_ENABLED:Ljava/lang/String; = "gsma.joyn.enabled"

.field private static final PREFS_FILE:Ljava/lang/String; = "gsma.joyn.preferences"

.field private static final RCS_NATIVE_CLIENT:Ljava/lang/String; = "com.sec.ims.android"

.field private static final SETTINGS_RCS_TAG:Ljava/lang/String; = "gsma.joyn.settings.activity"

.field private static final TAG:Ljava/lang/String; = "RcsNewFeatireActivity"

.field public static mFeatureShow:Z

.field public static mHour:J

.field public static mMonth:J

.field public static mRcsState:Lcom/android/mms/rcs/RcsState;

.field public static mWeek:J


# instance fields
.field private final mActivateButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mClient:Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field public mDiffTime:J

.field private final mDisableNowButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mNatureButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mNotNowButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x15180

    sput-wide v0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mHour:J

    const-wide/32 v0, 0x93a80

    sput-wide v0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mWeek:J

    const-wide/32 v0, 0x278d00

    sput-wide v0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mMonth:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mFeatureShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mClient:Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mDiffTime:J

    new-instance v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;-><init>(Lcom/android/mms/rcs/RcsNewFeatureActivity;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mActivateButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/RcsNewFeatureActivity$2;-><init>(Lcom/android/mms/rcs/RcsNewFeatureActivity;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mNotNowButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/RcsNewFeatureActivity$3;-><init>(Lcom/android/mms/rcs/RcsNewFeatureActivity;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mDisableNowButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/RcsNewFeatureActivity$4;-><init>(Lcom/android/mms/rcs/RcsNewFeatureActivity;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mNatureButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/RcsNewFeatureActivity$5;-><init>(Lcom/android/mms/rcs/RcsNewFeatureActivity;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/RcsNewFeatureActivity;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/RcsNewFeatureActivity;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mClient:Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/rcs/RcsNewFeatureActivity;Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;)Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;
    .locals 0
    .param p0    # Lcom/android/mms/rcs/RcsNewFeatureActivity;
    .param p1    # Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    iput-object p1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mClient:Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    return-object p1
.end method

.method public static findDuplicatedClient(Landroid/content/Context;)Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;
    .locals 11
    .param p0    # Landroid/content/Context;

    const/16 v10, 0x80

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v6, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    invoke-direct {v6}, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;-><init>()V

    :try_start_0
    const-string v8, "com.sec.ims.android"

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_1
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->readSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "RcsNewFeatireActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findDuplicatedClient: Found another joyn application which is activated "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "gsma.joyn.settings.activity"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->actionForIntent:Ljava/lang/String;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->activated:Z

    :cond_3
    iget-object v8, v6, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->packageName:Ljava/lang/String;

    if-nez v8, :cond_4

    const/4 v6, 0x0

    :cond_4
    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static readSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    new-instance v4, Ljava/io/FileReader;

    const-string v9, "gsma.joyn.preferences"

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    if-eq v1, v10, :cond_3

    if-ne v1, v11, :cond_2

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-le v9, v10, :cond_1

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_2

    const-string v9, "gsma.joyn.enabled"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_2
    move-object v3, v4

    :goto_3
    return-object v7

    :cond_1
    move-object v6, v7

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v9, "RcsNewFeatireActivity"

    const-string v10, "Exception while closing file reader"

    invoke-static {v9, v10, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_4
    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v9, "RcsNewFeatireActivity"

    const-string v10, "Exception while closing file reader"

    invoke-static {v9, v10, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_5
    :try_start_5
    const-string v9, "RcsNewFeatireActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating package context has failed for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_6
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v9, "RcsNewFeatireActivity"

    const-string v10, "Exception while closing file reader"

    invoke-static {v9, v10, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_4
    move-exception v0

    :goto_7
    :try_start_7
    const-string v9, "RcsNewFeatireActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parsing package preferences has failed for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    const-string v9, "RcsNewFeatireActivity"

    const-string v10, "Exception while closing file reader"

    invoke-static {v9, v10, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_8
    :try_start_9
    const-string v9, "RcsNewFeatireActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading package preferences has failed for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    const-string v9, "RcsNewFeatireActivity"

    const-string v10, "Exception while closing file reader"

    invoke-static {v9, v10, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v9

    :goto_9
    if-eqz v3, :cond_6

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_6
    :goto_a
    throw v9

    :catch_8
    move-exception v0

    const-string v10, "RcsNewFeatireActivity"

    const-string v11, "Exception while closing file reader"

    invoke-static {v10, v11, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catchall_1
    move-exception v9

    move-object v3, v4

    goto :goto_9

    :catch_9
    move-exception v0

    move-object v3, v4

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v3, v4

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v3, v4

    goto/16 :goto_5
.end method


# virtual methods
.method public createLaunchDialog(ZZLcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;)V
    .locals 15
    .param p1    # Z
    .param p2    # Z
    .param p3    # Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    const-string v11, "RcsNewFeatireActivity"

    const-string v12, "createLaunchDialog START!!!!!!"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/rcs/RcsOwnCapsManager;->isEnableRcsService()Z

    move-result v5

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object v11, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v11, "pref_key_new_feature_show"

    const/4 v12, 0x1

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mFeatureShow:Z

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c053a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c053b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c053d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mActivateButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_2
    :goto_0
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez v5, :cond_4

    invoke-virtual {v2, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c053c

    iget-object v12, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mNotNowButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    iget-object v11, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f040087

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->packageName:Ljava/lang/String;

    const/16 v14, 0x2000

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0526

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0527

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c053e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mDisableNowButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v11, "RcsNewFeatireActivity"

    const-string v12, "NameNotFoundException!!!!!!!"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_4
    const v11, 0x7f0c00ee

    iget-object v12, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mNatureButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const-string v6, "RcsNewFeatireActivity"

    const-string v7, "onCreate STATR!!!!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "pref_key_new_feature_show"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "boot_complete"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v6, "show_new_feature"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v6, "diff_time"

    invoke-virtual {v5, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mDiffTime:J

    const-string v6, "RcsNewFeatireActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "featureAlreadyShow : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bootComplete : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "checkLaunch : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v2, :cond_3

    :cond_1
    iget-wide v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mDiffTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "pref_key_new_feature_current"

    invoke-interface {v3, v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x4000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->createLaunchDialog(ZZLcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    sget-object v0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
