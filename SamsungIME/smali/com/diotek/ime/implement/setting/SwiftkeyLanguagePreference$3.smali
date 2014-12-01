.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;
.super Landroid/content/BroadcastReceiver;
.source "SwiftkeyLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "SwiftkeyLanguagePreference : Change network state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->processingFailDownload()V
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V

    :cond_1
    return-void
.end method
