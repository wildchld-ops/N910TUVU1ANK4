.class Lcom/android/phone/UsimDownloadDialog$6;
.super Landroid/os/Handler;
.source "UsimDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsimDownloadDialog;
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

    iput-object p1, p0, Lcom/android/phone/UsimDownloadDialog$6;->this$0:Lcom/android/phone/UsimDownloadDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "USIMServiceOpenDialog"

    const-string v1, "Rebooting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/UsimDownloadDialog$6;->this$0:Lcom/android/phone/UsimDownloadDialog;

    invoke-virtual {v0}, Lcom/android/phone/UsimDownloadDialog;->rebootSystem()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
