.class Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;
.super Ljava/lang/Object;
.source "SViewTorchLightMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    iget-object v2, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    # getter for: Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z
    invoke-static {v2}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->access$000(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    # setter for: Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z
    invoke-static {v5, v2}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->access$002(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;Z)Z

    iget-object v2, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "torch_light"

    iget-object v2, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    # getter for: Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z
    invoke-static {v2}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->access$000(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    # invokes: Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->updateViews()V
    invoke-static {v2}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->access$100(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    # getter for: Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z
    invoke-static {v2}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->access$000(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.ACTION_ASSISTIVE_WIDGET_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from"

    const-string v5, "quicktool"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "value"

    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    # getter for: Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z
    invoke-static {v5}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->access$000(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method
