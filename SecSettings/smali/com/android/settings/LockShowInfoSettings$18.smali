.class Lcom/android/settings/LockShowInfoSettings$18;
.super Ljava/lang/Object;
.source "LockShowInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockShowInfoSettings;->showGuidePopup(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockShowInfoSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/LockShowInfoSettings;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LockShowInfoSettings$18;->this$0:Lcom/android/settings/LockShowInfoSettings;

    iput-object p2, p0, Lcom/android/settings/LockShowInfoSettings$18;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings$18;->val$layout:Landroid/view/View;

    const v2, 0x7f0b0198

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings$18;->this$0:Lcom/android/settings/LockShowInfoSettings;

    const-string v2, "com.android.settings.LockShowInfoSettings.Pedometer"

    # invokes: Lcom/android/settings/LockShowInfoSettings;->saveSharedPreferences(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/LockShowInfoSettings;->access$600(Lcom/android/settings/LockShowInfoSettings;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings$18;->this$0:Lcom/android/settings/LockShowInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/LockShowInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_steps"

    iget-object v1, p0, Lcom/android/settings/LockShowInfoSettings$18;->this$0:Lcom/android/settings/LockShowInfoSettings;

    # getter for: Lcom/android/settings/LockShowInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/LockShowInfoSettings;->access$000(Lcom/android/settings/LockShowInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
