.class Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityWidgetProviderAssistiveLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOrientation:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mOrientation:I

    iput-object p1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "AccessibilityWidgetProviderAssistiveLight"

    const-string v6, "null action received at SettingsBroadcastReceiver"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v4, v5, Landroid/content/res/Configuration;->orientation:I

    if-eqz v4, :cond_2

    iget v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mOrientation:I

    if-eq v5, v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    iput v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mOrientation:I

    :cond_2
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v5, "AccessibilityWidgetProviderAssistiveLight"

    const-string v6, "Assistive light should be turned off as User or Mode switched"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() PLUG:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "plugged"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / STATUS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "status"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / LEVEL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "level"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "status"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "level"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryLevel:I
    invoke-static {v2}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$202(I)I

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    # setter for: Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z
    invoke-static {v8}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$302(Z)Z

    const-string v5, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() mBatteryLevel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / Static Battery Level : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryLevel:I
    invoke-static {}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$200()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$400()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    # invokes: Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$100(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    if-gt v2, v5, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const v5, 0x7f090081

    invoke-static {p1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const-string v5, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() low battery ASSISTIVE OFF : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    # setter for: Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z
    invoke-static {v9}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$302(Z)Z

    # getter for: Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$400()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    const-string v5, "AccessibilityWidgetProviderAssistiveLight"

    const-string v6, "onReceive() : cancel Timer"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method registerBroadcastReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method unregisterBroadcastReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
