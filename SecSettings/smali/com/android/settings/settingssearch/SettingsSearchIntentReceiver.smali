.class public Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsSearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;,
        Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;
    }
.end annotation


# static fields
.field private static SearchinfoThread:Z

.field private static TitleinfoThread:Z

.field private static isChangeEasyMode:Z

.field private static mDoingInitTitleDB:Z

.field public static searchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mDoingInitTitleDB:Z

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isChangeEasyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mDoingInitTitleDB:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mDoingInitTitleDB:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isChangeEasyMode:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isChangeEasyMode:Z

    return p0
.end method

.method private isEncryptMode()Z
    .locals 2

    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trigger_restart_min_framework"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    const-string v10, "com.sec.providers.settingsearch"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "No package : SettingsSearchProvider"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SettingSearch/SearchIntentReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "action : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.intent.action.RESTORE_SEARCH_DB"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isEncryptMode()Z

    move-result v9

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    if-nez v9, :cond_3

    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->restoredb(Z)V

    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;

    invoke-direct {v7, p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitSerachDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isEncryptMode()Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "LOCALE_CHANGED call search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->restoredb(Z)V

    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;

    const/4 v9, 0x1

    invoke-direct {v7, p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;Z)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_4
    const-string v9, "android.settings.REQUEST_FINDO_SEARCH_CHANGE_SETTING_VALUE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "rowId"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v9, "value"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v3, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_1
    iput v9, v2, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    const-string v9, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v3, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "rowId"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v2

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z

    goto/16 :goto_0

    :cond_7
    const-string v9, "android.settings.FINISH_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "FINISH_SEARCHDB_EXTRA_APPS call search titleinfo db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    invoke-virtual {v4, v8}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    const-string v9, "SettingSearch/SearchIntentReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "User "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is deleting."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;

    invoke-direct {v7, p0}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_9
    const-string v9, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->SearchinfoThread:Z

    if-nez v9, :cond_0

    const-string v9, "SettingSearch/SearchIntentReceiver"

    const-string v10, "EASY_MODE_CHANGE call search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->isChangeEasyMode:Z

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->TitleinfoThread:Z

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->restoredb(Z)V

    new-instance v7, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;

    const/4 v9, 0x1

    invoke-direct {v7, p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;Z)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public restoredb(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "lock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
