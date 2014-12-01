.class Lcom/android/mms/ui/NoConfirmationSendService$1;
.super Landroid/os/Handler;
.source "NoConfirmationSendService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NoConfirmationSendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NoConfirmationSendService;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NoConfirmationSendService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/NoConfirmationSendService$1;->this$0:Lcom/android/mms/ui/NoConfirmationSendService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/NoConfirmationSendService$1;->this$0:Lcom/android/mms/ui/NoConfirmationSendService;

    const v1, 0x7f0c015b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
