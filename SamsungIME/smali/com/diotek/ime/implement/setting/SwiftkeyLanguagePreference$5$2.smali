.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->onComplete(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;Z)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iput-boolean p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, "download-state"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    if-ne v2, v11, :cond_1

    iget-boolean v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->val$success:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->checkVaildVOLP()Z
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1700(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "SamsungIME"

    const-string v8, "SwiftkeyLanguagePreference.VOlistener : Complete to Download VO langaue"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isDownloadInProgress()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "download-vocur"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-vomax"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-skmax"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-skcur"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-state"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v7, v11}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v6, 0x7f0e01d8

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v9, v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v9, v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v5

    const-string v7, "RELOAD_LANGUAGEPACK"

    invoke-interface {v5, v7, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->notifyVODBListUpdated()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->downloadSwiftkeyLanguage(Z)V
    invoke-static {v7, v11}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V

    goto :goto_1

    :cond_3
    const-string v7, "SamsungIME"

    const-string v8, "SwiftkeyLanguagePreference.VOlistener : Fail to Download VO langaue"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mVOLanguagePack:Lcom/visionobjects/resourcemanager/VOLanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "download-vocur"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-vomax"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-skmax"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-skcur"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download-state"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getAvailableInternalMemory()J

    move-result-wide v0

    const-wide/16 v7, 0x64

    cmp-long v7, v0, v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v7, v10}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v6, 0x7f0e01da

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v9, v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v9, v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :goto_4
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V
    invoke-static {v7, v10}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V

    goto/16 :goto_2

    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    const/4 v8, 0x2

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v7, v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v6, 0x7f0e01db

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;

    iget-object v8, v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :catch_0
    move-exception v7

    goto/16 :goto_3

    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method
