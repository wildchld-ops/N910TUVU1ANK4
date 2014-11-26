.class Lcom/android/systemui/settings/SettingsUI$1$1;
.super Ljava/lang/Object;
.source "SettingsUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/SettingsUI$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/SettingsUI$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/SettingsUI$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/SettingsUI$1$1;->this$1:Lcom/android/systemui/settings/SettingsUI$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/systemui/settings/SettingsUI$1$1;->this$1:Lcom/android/systemui/settings/SettingsUI$1;

    iget-object v0, v0, Lcom/android/systemui/settings/SettingsUI$1;->this$0:Lcom/android/systemui/settings/SettingsUI;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/settings/SettingsUI;->mBrightnessDialog:Lcom/android/systemui/settings/BrightnessDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/settings/SettingsUI;->access$002(Lcom/android/systemui/settings/SettingsUI;Lcom/android/systemui/settings/BrightnessDialog;)Lcom/android/systemui/settings/BrightnessDialog;

    return-void
.end method
