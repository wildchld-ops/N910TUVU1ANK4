.class Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$4;
.super Landroid/database/ContentObserver;
.source "SViewTorchLightMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$4;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$4;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    iget-object v2, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$4;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_light"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z
    invoke-static {v1, v0}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->access$002(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;Z)Z

    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$4;->this$0:Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    # invokes: Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->updateViews()V
    invoke-static {v0}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->access$100(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)V

    return-void
.end method
