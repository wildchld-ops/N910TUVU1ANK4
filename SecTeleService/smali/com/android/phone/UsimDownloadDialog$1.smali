.class Lcom/android/phone/UsimDownloadDialog$1;
.super Ljava/lang/Object;
.source "UsimDownloadDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UsimDownloadDialog;->rebootSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownloadDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownloadDialog$1;->this$0:Lcom/android/phone/UsimDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/UsimDownloadDialog$1;->this$0:Lcom/android/phone/UsimDownloadDialog;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "OTA_REG_DONE"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
