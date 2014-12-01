.class Lcom/android/settings/wifi/mobileap/WifiApWarning$27;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V

    return-void
.end method
