.class public Lcom/android/mms/ui/CMASPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CMASPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static HIDDENMENU_ENABLE_PATH:Ljava/lang/String; = null

.field private static final HIDDEN_MENU_OFF:Ljava/lang/String; = "OFF"

.field private static final HIDDEN_MENU_ON:Ljava/lang/String; = "ON"

.field private static final SYSTEM_PROP_HIDDENMENU_ENABLE_KEY:Ljava/lang/String; = "sys.hiddenmenu.enable"

.field static final TAG:Ljava/lang/String; = "Mms/CMASPreferenceActivity"


# instance fields
.field amber:Landroid/preference/CheckBoxPreference;

.field extreme:Landroid/preference/CheckBoxPreference;

.field private isFirsttime:Z

.field private mEnableHiddenMenuForSprint:Z

.field mVibrator:Landroid/os/Vibrator;

.field private mplayer:Landroid/media/MediaPlayer;

.field prefs:Landroid/content/SharedPreferences;

.field presidential:Landroid/preference/CheckBoxPreference;

.field severe:Landroid/preference/CheckBoxPreference;

.field test:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/efs/carrier/HiddenMenu"

    sput-object v0, Lcom/android/mms/ui/CMASPreferenceActivity;->HIDDENMENU_ENABLE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    return-void
.end method

.method public static CheckCMASChannelInfo(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Mms/CMASPreferenceActivity"

    const-string v1, "getCMASConfig()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private addSharedPref(Ljava/lang/String;Z)V
    .locals 6

    const-string v3, "Mms/CMASPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " saved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkHiddenMenuEnable()Z
    .locals 6

    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/mms/ui/CMASPreferenceActivity;->HIDDENMENU_ENABLE_PATH:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/mms/ui/CMASPreferenceActivity;->HIDDENMENU_ENABLE_PATH:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mms/ui/CMASPreferenceActivity;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string v4, "OFF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Mms/CMASPreferenceActivity"

    const-string v5, "Exception in reading file"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c01c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00ef

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c01c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static getCMASChannels(Landroid/content/SharedPreferences;)[S
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v9, 0x1112

    const/4 v8, 0x0

    const-string v5, "Mms/CMASPreferenceActivity"

    const-string v6, "getCMASConfig()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xe

    new-array v1, v5, [S

    const/4 v2, 0x0

    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    aput-short v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aput-short v9, v1, v8

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x1113

    aput-short v6, v1, v5

    const/4 v5, 0x2

    const/16 v6, 0x1114

    aput-short v6, v1, v5

    :cond_1
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x6

    const/4 v5, 0x3

    const/16 v6, 0x1115

    aput-short v6, v1, v5

    const/4 v5, 0x4

    const/16 v6, 0x1116

    aput-short v6, v1, v5

    const/4 v5, 0x5

    const/16 v6, 0x1117

    aput-short v6, v1, v5

    const/4 v5, 0x6

    const/16 v6, 0x1118

    aput-short v6, v1, v5

    const/4 v5, 0x7

    const/16 v6, 0x1119

    aput-short v6, v1, v5

    const/16 v5, 0x8

    const/16 v6, 0x111a

    aput-short v6, v1, v5

    :cond_2
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x9

    const/16 v6, 0x111b

    aput-short v6, v1, v5

    :cond_3
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x4

    const/16 v5, 0xa

    const/16 v6, 0x111c

    aput-short v6, v1, v5

    const/16 v5, 0xb

    const/16 v6, 0x111d

    aput-short v6, v1, v5

    const/16 v5, 0xc

    const/16 v6, 0x111e

    aput-short v6, v1, v5

    const/16 v5, 0xd

    const/16 v6, 0x111f

    aput-short v6, v1, v5

    :cond_4
    const-string v5, "Mms/CMASPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v3, [S

    aput-short v9, v4, v8

    const/4 v0, 0x0

    const/4 v2, 0x1

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_6

    aget-short v5, v1, v2

    if-eqz v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    aget-short v5, v1, v2

    aput-short v5, v4, v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-object v4
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v5, "Mms/CMASPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read file path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v2, v3

    :cond_2
    :goto_2
    const-string v5, "Mms/CMASPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_3
    :try_start_3
    const-string v4, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, "Mms/CMASPreferenceActivity"

    const-string v6, "Exception in reading file"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, "Mms/CMASPreferenceActivity"

    const-string v6, "Exception in closing file"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_5
    throw v5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v6, "Mms/CMASPreferenceActivity"

    const-string v7, "Exception in closing file"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, "Mms/CMASPreferenceActivity"

    const-string v6, "Exception in closing file"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private resetPreferences(Z)V
    .locals 15

    const-string v11, "pref_key_cmas_settings_alert"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAllInOneThreaded()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "pref_key_cmas_settings_ui"

    invoke-virtual {p0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialOPTOUTPref()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const-string v11, "#cmas#type##presidential#enabled"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v11, "Mms/CMASPreferenceActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HiddenMenu value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "sys.hiddenmenu.enable"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Mms/CMASPreferenceActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkHiddenMenuEnable() value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/mms/ui/CMASPreferenceActivity;->checkHiddenMenuEnable()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestSPRFeature()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAllInOneThreaded()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    :cond_2
    const-string v11, "sys.hiddenmenu.enable"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/mms/ui/CMASPreferenceActivity;->checkHiddenMenuEnable()Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "#cmas#type##test#enabled"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isFirsttime:Z

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##extreme#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##severe#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##amber#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->amber:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##test#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->test:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "#cmas#type##presidential#enabled"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->presidential:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->presidential:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f0c01d3

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v11, "en"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "us"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f0c01d4

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->amber:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f0c01d6

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f0c01d5

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v11, "en"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "us"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const v11, 0x7f0c02f1

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v11, 0x7f0c02f2

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessageServereBelongToExtreme()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "#cmas#type##extreme#enabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "#cmas#type##severe#enabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "#cmas#type##amber#enabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "#cmas#type##test#enabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v11, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_7
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "pref_cdma_cmas_over_lte_menu"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    iget-boolean v11, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    if-eqz v11, :cond_8

    const/4 v5, 0x1

    :cond_8
    if-nez v5, :cond_9

    const-string v11, "pref_cmas_exercise"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v11, "pref_cmas_operator_defined"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v0, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_9
    return-void

    :cond_a
    const-string v11, "pref_key_cmas_settings_ui"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasFontSizePref()Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "#cmas#pref##font#size"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasNotificationPref()Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "pref_key_emergency_alert"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    const-string v11, "pref_key_emergency_vibrateWhen"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAlertSoundMenu()Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "pref_key_emergency_alertWhen"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasVibrationPreviewPref()Z

    move-result v11

    if-nez v11, :cond_e

    const-string v11, "pref_key_emergency_vibrate"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "pref_key_cmas_settings_ui"

    invoke-virtual {p0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_0
.end method

.method public static setCMASConfig(Landroid/content/Context;)V
    .locals 5

    const-string v2, "Mms/CMASPreferenceActivity"

    const-string v3, "setCMASConfig()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Mms/CMASPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setCMAS config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->resetPreferences(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0211

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_key_emergency_alert"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v4, 0x0

    const-string v3, "pref_key_emergency_alert"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    const-string v2, "android.resource://com.android.mms/raw/cmas_ringtone"

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0211

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    :try_start_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0215

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v3, "Mms/CMASPreferenceActivity"

    const-string v4, "Am now in playing"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Mms/CMASPreferenceActivity"

    const-string v4, "Exception in tree click"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "Mms/CMASPreferenceActivity"

    const-string v4, "Ringtone str not found"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "pref_key_emergency_vibrate"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    const/16 v4, 0xc

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0216

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    iput-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0214

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :array_0
    .array-data 8
        0x1f4
        0x7d0
        0x1f4
        0x3e8
        0x1f4
        0x3e8
        0x1f4
        0x7d0
        0x1f4
        0x3e8
        0x1f4
        0x3e8
    .end array-data
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    const-string v2, "pref_cdma_cmas_over_lte_menu"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "Mms/CMASPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hidden menu status is changed for Sprint mEnableHiddenMenuForSprint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mEnableHiddenMenuForSprint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-direct {p0, v4}, Lcom/android/mms/ui/CMASPreferenceActivity;->resetPreferences(Z)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v4, "#cmas#type##amber#enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "#cmas#type##amber#enabled"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "Mms/CMASPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value amber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "#cmas#type##amber#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "#cmas#type##extreme#enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "#cmas#type##extreme#enabled"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "Mms/CMASPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " value extreme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v4, "#cmas#type##severe#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_2
    const-string v4, "#cmas#type##extreme#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v4, "#cmas#type##severe#enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "#cmas#type##severe#enabled"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "#cmas#type##extreme#enabled"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    const-string v4, "Mms/CMASPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=extreme value severe= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    const-string v4, "#cmas#type##severe#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    :goto_2
    iput-boolean v7, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isFirsttime:Z

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v4, "#cmas#type##severe#enabled"

    invoke-direct {p0, v4, v7}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    iget-boolean v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isFirsttime:Z

    if-nez v4, :cond_5

    const v4, 0x7f0c03e8

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->setCMASConfig(Landroid/content/Context;)V

    :cond_3
    return-void
.end method
