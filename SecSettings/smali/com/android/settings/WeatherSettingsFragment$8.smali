.class Lcom/android/settings/WeatherSettingsFragment$8;
.super Ljava/lang/Object;
.source "WeatherSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WeatherSettingsFragment;->showWeatherGuidePopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WeatherSettingsFragment;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/WeatherSettingsFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->val$layout:Landroid/view/View;

    const v3, 0x7f0b0198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    # invokes: Lcom/android/settings/WeatherSettingsFragment;->saveWeatherSharedPreferences()V
    invoke-static {v2}, Lcom/android/settings/WeatherSettingsFragment;->access$100(Lcom/android/settings/WeatherSettingsFragment;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    # setter for: Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z
    invoke-static {v2, v1}, Lcom/android/settings/WeatherSettingsFragment;->access$202(Lcom/android/settings/WeatherSettingsFragment;Z)Z

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    # getter for: Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/WeatherSettingsFragment;->access$400(Lcom/android/settings/WeatherSettingsFragment;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment$8;->this$0:Lcom/android/settings/WeatherSettingsFragment;

    # getter for: Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z
    invoke-static {v3}, Lcom/android/settings/WeatherSettingsFragment;->access$300(Lcom/android/settings/WeatherSettingsFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
