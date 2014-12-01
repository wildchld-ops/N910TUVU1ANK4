.class Lcom/android/systemui/settings/SettingsUI$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/SettingsUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/SettingsUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/SettingsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/SettingsUI$1;->this$0:Lcom/android/systemui/settings/SettingsUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/SettingsUI$1;->this$0:Lcom/android/systemui/settings/SettingsUI;

    # getter for: Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;
    invoke-static {v1}, Lcom/android/systemui/settings/SettingsUI;->access$000(Lcom/android/systemui/settings/SettingsUI;)Lcom/android/systemui/settings/BrightnessDialog;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/SettingsUI$1;->this$0:Lcom/android/systemui/settings/SettingsUI;

    new-instance v2, Lcom/android/systemui/settings/BrightnessDialog;

    iget-object v3, p0, Lcom/android/systemui/settings/SettingsUI$1;->this$0:Lcom/android/systemui/settings/SettingsUI;

    iget-object v3, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/settings/BrightnessDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;
    invoke-static {v1, v2}, Lcom/android/systemui/settings/SettingsUI;->access$002(Lcom/android/systemui/settings/SettingsUI;Lcom/android/systemui/settings/BrightnessDialog;)Lcom/android/systemui/settings/BrightnessDialog;

    iget-object v1, p0, Lcom/android/systemui/settings/SettingsUI$1;->this$0:Lcom/android/systemui/settings/SettingsUI;

    # getter for: Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;
    invoke-static {v1}, Lcom/android/systemui/settings/SettingsUI;->access$000(Lcom/android/systemui/settings/SettingsUI;)Lcom/android/systemui/settings/BrightnessDialog;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/settings/SettingsUI$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/SettingsUI$1$1;-><init>(Lcom/android/systemui/settings/SettingsUI$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/SettingsUI$1;->this$0:Lcom/android/systemui/settings/SettingsUI;

    # getter for: Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;
    invoke-static {v1}, Lcom/android/systemui/settings/SettingsUI;->access$000(Lcom/android/systemui/settings/SettingsUI;)Lcom/android/systemui/settings/BrightnessDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/SettingsUI$1;->this$0:Lcom/android/systemui/settings/SettingsUI;

    # getter for: Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;
    invoke-static {v1}, Lcom/android/systemui/settings/SettingsUI;->access$000(Lcom/android/systemui/settings/SettingsUI;)Lcom/android/systemui/settings/BrightnessDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "SettingsUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
