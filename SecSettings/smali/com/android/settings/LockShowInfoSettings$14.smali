.class Lcom/android/settings/LockShowInfoSettings$14;
.super Ljava/lang/Object;
.source "LockShowInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/LockShowInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LockShowInfoSettings$14;->this$0:Lcom/android/settings/LockShowInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings$14;->this$0:Lcom/android/settings/LockShowInfoSettings;

    # getter for: Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/LockShowInfoSettings;->access$500(Lcom/android/settings/LockShowInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/LockShowInfoSettings$14;->this$0:Lcom/android/settings/LockShowInfoSettings;

    # getter for: Lcom/android/settings/LockShowInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/LockShowInfoSettings;->access$500(Lcom/android/settings/LockShowInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
