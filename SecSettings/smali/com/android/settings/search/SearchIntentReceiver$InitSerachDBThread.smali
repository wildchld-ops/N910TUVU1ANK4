.class Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;
.super Ljava/lang/Thread;
.source "SearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitSerachDBThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchIntentReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SearchIntentReceiver"

    const-string v1, "BOOT_COMPLETED call InitSerachDBThread thread start!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/search/SettingHeaderXmlParser;

    iget-object v1, p0, Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    # getter for: Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/search/SearchIntentReceiver;->access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingHeaderXmlParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/search/SearchIntentReceiver;->xmlParser:Lcom/android/settings/search/SettingHeaderXmlParser;

    sget-object v0, Lcom/android/settings/search/SearchIntentReceiver;->xmlParser:Lcom/android/settings/search/SettingHeaderXmlParser;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingHeaderXmlParser;->initSearchDB()V

    sget-object v0, Lcom/android/settings/search/SearchIntentReceiver;->xmlParser:Lcom/android/settings/search/SettingHeaderXmlParser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingHeaderXmlParser;->initTitleDB(Z)V

    iget-object v0, p0, Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;->this$0:Lcom/android/settings/search/SearchIntentReceiver;

    # getter for: Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/search/SearchIntentReceiver;->access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INSERT_SEARCHDB_EXTRA_APPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "provider.settingsearch.permission.WRITE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "SearchIntentReceiver"

    const-string v1, "BOOT_COMPLETED call InitSerachDBThread thread end!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
