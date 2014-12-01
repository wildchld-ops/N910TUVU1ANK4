.class Lcom/android/mms/ui/CbConfigPreferenceActivity$3;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const-string v1, "My channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    const v2, 0x7f0c0102

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$700(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # invokes: Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$800(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    const v2, 0x7f0c010a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$700(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$700(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$700(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # invokes: Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    goto :goto_0
.end method
