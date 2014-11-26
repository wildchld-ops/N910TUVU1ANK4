.class Lcom/android/settings/MobileDataEnabler$2;
.super Ljava/lang/Object;
.source "MobileDataEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MobileDataEnabler;->onRoamingDisplayMobileDataOnAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$2;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$2;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$2;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$2;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
