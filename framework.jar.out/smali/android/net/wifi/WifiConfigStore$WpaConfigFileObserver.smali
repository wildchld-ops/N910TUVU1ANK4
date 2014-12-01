.class Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;
.super Landroid/os/FileObserver;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpaConfigFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiConfigStore;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfigStore;)V
    .locals 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;->this$0:Landroid/net/wifi/WifiConfigStore;

    const-string v0, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # getter for: Landroid/net/wifi/WifiConfigStore;->VDBG:Z
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;->this$0:Landroid/net/wifi/WifiConfigStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wpa_supplicant.conf changed; new size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiConfigStore;->access$100(Landroid/net/wifi/WifiConfigStore;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
