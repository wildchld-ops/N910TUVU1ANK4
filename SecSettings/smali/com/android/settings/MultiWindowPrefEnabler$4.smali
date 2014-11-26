.class Lcom/android/settings/MultiWindowPrefEnabler$4;
.super Ljava/lang/Object;
.source "MultiWindowPrefEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowPrefEnabler;->showTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowPrefEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowPrefEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    # invokes: Lcom/android/settings/MultiWindowPrefEnabler;->removeEnabledScreenReaderValue()V
    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$200(Lcom/android/settings/MultiWindowPrefEnabler;)V

    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    # getter for: Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$100(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    # getter for: Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$000(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    # getter for: Lcom/android/settings/MultiWindowPrefEnabler;->mSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$100(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/MultiWindowPrefEnabler$4$1;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowPrefEnabler$4$1;-><init>(Lcom/android/settings/MultiWindowPrefEnabler$4;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.talkback_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    # getter for: Lcom/android/settings/MultiWindowPrefEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$000(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
