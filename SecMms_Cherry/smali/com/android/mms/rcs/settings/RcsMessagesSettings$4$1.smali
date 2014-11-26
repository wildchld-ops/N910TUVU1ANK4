.class Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$1;
.super Ljava/lang/Object;
.source "RcsMessagesSettings.java"

# interfaces
.implements Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$1;->this$1:Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 5
    .param p1    # Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v2}, Lcom/android/mms/rcs/RcsState;->setStateDeactivated()V

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$1;->this$1:Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;

    iget-object v2, v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    iget-object v2, v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v2}, Lcom/android/mms/rcs/settings/RcsSetting;->setRcsTimestampToPreference()V

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$1;->this$1:Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;

    iget-object v2, v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    iget-object v2, v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_favorite_emoticons"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_key_favorite_emoticons"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "pref_key_favorite_emoticons"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$1;->this$1:Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;

    iget-object v2, v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    iget-object v2, v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v2}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    return-void
.end method
