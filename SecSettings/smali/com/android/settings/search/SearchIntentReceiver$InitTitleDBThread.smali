.class Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;
.super Ljava/lang/Thread;
.source "SearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitTitleDBThread"
.end annotation


# instance fields
.field private locale_change:Z

.field private mSearchManager:Lcom/android/settings/search/SettingSearchManager;

.field final synthetic this$0:Lcom/android/settings/search/SearchIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/search/SearchIntentReceiver;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    iget-object v1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    # getter for: Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/search/SearchIntentReceiver;->access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    iput-boolean v2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/search/SearchIntentReceiver;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    iget-object v1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    # getter for: Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/search/SearchIntentReceiver;->access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    iput-boolean p2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    # getter for: Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z
    invoke-static {}, Lcom/android/settings/search/SearchIntentReceiver;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    # setter for: Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z
    invoke-static {v3}, Lcom/android/settings/search/SearchIntentReceiver;->access$202(Z)Z

    # setter for: Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z
    invoke-static {v4}, Lcom/android/settings/search/SearchIntentReceiver;->access$302(Z)Z

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SearchIntentReceiver"

    const-string v2, "InterruptedException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    # setter for: Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z
    invoke-static {v3}, Lcom/android/settings/search/SearchIntentReceiver;->access$102(Z)Z

    move-result v1

    # setter for: Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z
    invoke-static {v1}, Lcom/android/settings/search/SearchIntentReceiver;->access$202(Z)Z

    const-string v1, "SearchIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitTitleDBThread start --> mDoingInitTitleDB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z
    invoke-static {}, Lcom/android/settings/search/SearchIntentReceiver;->access$100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->mSearchManager:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v1}, Lcom/android/settings/search/SettingSearchManager;->changed_language()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/settings/search/SettingHeaderXmlParser;

    iget-object v2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    # getter for: Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/search/SearchIntentReceiver;->access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/search/SettingHeaderXmlParser;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/search/SearchIntentReceiver;->xmlParser:Lcom/android/settings/search/SettingHeaderXmlParser;

    sget-object v1, Lcom/android/settings/search/SearchIntentReceiver;->xmlParser:Lcom/android/settings/search/SettingHeaderXmlParser;

    iget-boolean v2, p0, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->locale_change:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SettingHeaderXmlParser;->initTitleDB(Z)V

    :cond_1
    # setter for: Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z
    invoke-static {v4}, Lcom/android/settings/search/SearchIntentReceiver;->access$102(Z)Z

    const-string v1, "SearchIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitTitleDBThread end --> mDoingInitTitleDB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z
    invoke-static {}, Lcom/android/settings/search/SearchIntentReceiver;->access$100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SearchIntentReceiver"

    const-string v2, "LOCALE_CHANGED call search setting db finish!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z
    invoke-static {v4}, Lcom/android/settings/search/SearchIntentReceiver;->access$202(Z)Z

    return-void
.end method
