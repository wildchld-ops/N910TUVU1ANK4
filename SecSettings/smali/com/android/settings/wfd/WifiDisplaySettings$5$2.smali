.class Lcom/android/settings/wfd/WifiDisplaySettings$5$2;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings$5;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wfd/WifiDisplaySettings$5;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5$2;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$5$2;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$5;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->resumeWifiDisplay()V

    return-void
.end method
