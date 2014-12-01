.class public Lcom/android/settings/search/SearchIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;,
        Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;
    }
.end annotation


# static fields
.field private static SearchinfoThread:Z

.field private static TitleinfoThread:Z

.field private static mDoingInitTitleDB:Z

.field public static xmlParser:Lcom/android/settings/search/SettingHeaderXmlParser;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z

    sput-boolean v0, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    sput-boolean v0, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

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

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    const-string v10, "com.sec.providers.settingsearch"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v7, "SearchIntentReceiver"

    const-string v8, "No package : SettingsSearchProvider"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SearchIntentReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SearchIntentReceiver action : "

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
    invoke-direct {p0}, Lcom/android/settings/search/SearchIntentReceiver;->isEncryptMode()Z

    move-result v9

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    if-nez v9, :cond_3

    const-string v8, "SearchIntentReceiver"

    const-string v9, "RESTORE_SEARCH_DB call search setting db init!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    invoke-virtual {p0, v7}, Lcom/android/settings/search/SearchIntentReceiver;->restoredb(Z)V

    new-instance v6, Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;

    invoke-direct {v6, p0}, Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;-><init>(Lcom/android/settings/search/SearchIntentReceiver;)V

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-boolean v9, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    if-nez v9, :cond_4

    const-string v8, "SearchIntentReceiver"

    const-string v9, "LOCALE_CHANGED call search setting db init!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    invoke-virtual {p0, v7}, Lcom/android/settings/search/SearchIntentReceiver;->restoredb(Z)V

    new-instance v6, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/search/SearchIntentReceiver;Z)V

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_4
    const-string v9, "android.settings.REQUEST_FINDO_SEARCH_CHANGE_SETTING_VALUE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "rowId"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v9, "value"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-instance v3, Lcom/android/settings/search/SettingSearchManager;

    iget-object v9, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(I)Lcom/android/settings/search/SearchItem;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v7, :cond_5

    :goto_1
    iput v7, v2, Lcom/android/settings/search/SearchItem;->value:I

    iget-object v7, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->callMenu(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)Z

    goto/16 :goto_0

    :cond_5
    move v7, v8

    goto :goto_1

    :cond_6
    const-string v9, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v3, Lcom/android/settings/search/SettingSearchManager;

    iget-object v7, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "rowId"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(I)Lcom/android/settings/search/SearchItem;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->callMenu(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)Z

    goto/16 :goto_0

    :cond_7
    const-string v9, "android.settings.FINISH_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SearchIntentReceiver"

    const-string v10, "FINISH_SEARCHDB_EXTRA_APPS call search titleinfo db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    sput-boolean v8, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    new-instance v6, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;

    invoke-direct {v6, p0}, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/search/SearchIntentReceiver;)V

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public restoredb(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "lock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
