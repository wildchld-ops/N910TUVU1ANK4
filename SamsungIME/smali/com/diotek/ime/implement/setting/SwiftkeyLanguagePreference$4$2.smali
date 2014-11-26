.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->onComplete(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;Z)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iput-boolean p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->val$success:Z

    if-eqz v6, :cond_2

    const-string v6, "SamsungIME"

    const-string v7, "SwiftkeyLanguagePreference.VOlistener : Complete to Download Swiftkey langaue"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "download-vocur"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "download-vomax"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "download-skmax"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "download-skcur"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "download-state"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z
    invoke-static {v6, v11}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$902(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v6, v11}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1200(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v6, v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1102(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    const v4, 0x7f0e01d8

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v8, v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v8, v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1000()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1000()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f0e01cf

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.inputmethod.language_downloaded"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->sendSupportLanguage()V

    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v3

    const-string v6, "RELOAD_LANGUAGEPACK"

    invoke-interface {v3, v6, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_1
    const v4, 0x7f0e01e0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SwiftkeyLanguagePreference.VOlistener : Fail to Download Swiftkey langaue "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v8, v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v8

    invoke-interface {v8}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "download-vocur"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "download-vomax"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "download-skmax"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "download-skcur"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "download-state"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getAvailableInternalMemory()J

    move-result-wide v0

    const-wide/16 v6, 0x64

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v6, v10}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v4, 0x7f0e01da

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v8, v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v8, v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :goto_4
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V
    invoke-static {v6, v10}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V

    goto/16 :goto_2

    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    const/4 v7, 0x2

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v6, v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v4, 0x7f0e01db

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v7, v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :catch_0
    move-exception v6

    goto/16 :goto_3

    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method
