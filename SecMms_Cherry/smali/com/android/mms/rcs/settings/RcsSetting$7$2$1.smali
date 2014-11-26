.class Lcom/android/mms/rcs/settings/RcsSetting$7$2$1;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsSetting$7$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/rcs/settings/RcsSetting$7$2;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting$7$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$2$1;->this$2:Lcom/android/mms/rcs/settings/RcsSetting$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 6
    .param p1    # Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v3}, Lcom/android/mms/rcs/RcsState;->setStateDeactivated()V

    iget-object v3, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$2$1;->this$2:Lcom/android/mms/rcs/settings/RcsSetting$7$2;

    iget-object v3, v3, Lcom/android/mms/rcs/settings/RcsSetting$7$2;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;

    iget-object v3, v3, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v3}, Lcom/android/mms/rcs/settings/RcsSetting;->setRcsTimestampToPreference()V

    iget-object v3, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$2$1;->this$2:Lcom/android/mms/rcs/settings/RcsSetting$7$2;

    iget-object v3, v3, Lcom/android/mms/rcs/settings/RcsSetting$7$2;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;

    iget-object v3, v3, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v3, v3, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_key_favorite_emoticons"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_key_favorite_emoticons"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, "pref_key_favorite_emoticons"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v3, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$2$1;->this$2:Lcom/android/mms/rcs/settings/RcsSetting$7$2;

    iget-object v3, v3, Lcom/android/mms/rcs/settings/RcsSetting$7$2;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;

    iget-object v3, v3, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v3}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mChangeSwitchState:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
