.class Lcom/android/settings/MultiWindowEnabler$6;
.super Ljava/lang/Object;
.source "MultiWindowEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowEnabler;->showPopupWindowsDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler$6;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler$6;->this$0:Lcom/android/settings/MultiWindowEnabler;

    # getter for: Lcom/android/settings/MultiWindowEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/MultiWindowEnabler;->access$000(Lcom/android/settings/MultiWindowEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler$6;->this$0:Lcom/android/settings/MultiWindowEnabler;

    # getter for: Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/MultiWindowEnabler;->access$100(Lcom/android/settings/MultiWindowEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
