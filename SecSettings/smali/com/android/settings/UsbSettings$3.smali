.class Lcom/android/settings/UsbSettings$3;
.super Landroid/os/storage/StorageEventListener;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsbSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v1, "shared"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/UsbSettings$3;->this$0:Lcom/android/settings/UsbSettings;

    # invokes: Lcom/android/settings/UsbSettings;->switchDisplay(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/UsbSettings;->access$300(Lcom/android/settings/UsbSettings;Z)V

    return-void
.end method
