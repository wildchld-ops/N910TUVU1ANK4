.class Lcom/android/mms/ui/MessagingPreferenceActivity$6;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->setupUIAutoAccept()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/rcs/Configuration$Ft;->setFtAutoAcceptInRoaming(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/rcs/RcsChatManager;->sendAllPendingFTs(Landroid/content/Context;)V

    :goto_0
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupUIAutoAccept: FT auto accept in roaming set as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/rcs/Configuration$Ft;->setFtAutoAcceptInHome(Landroid/content/Context;)V

    goto :goto_0
.end method
