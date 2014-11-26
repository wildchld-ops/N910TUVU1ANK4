.class Lcom/android/mms/rcs/settings/RcsMessagesSettings$2;
.super Ljava/lang/Object;
.source "RcsMessagesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsMessagesSettings;->setupUIAutoAccept()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$2;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$2;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    iget-object v1, v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$2;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/rcs/Configuration$Ft;->setFtAutoAcceptInHome(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$2;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isInternationalRoaming(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$2;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/rcs/RcsChatManager;->sendAllPendingFTs(Landroid/content/Context;)V

    :cond_0
    :goto_0
    const-string v1, "Mms/RcsMesssageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupUIAutoAccept: FT auto accept in home set as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$2;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/rcs/Configuration$Ft;->setFtDisableAutoAccept(Landroid/content/Context;)V

    goto :goto_0
.end method
