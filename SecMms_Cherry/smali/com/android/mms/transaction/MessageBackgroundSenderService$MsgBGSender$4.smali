.class Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;
.super Ljava/lang/Object;
.source "MessageBackgroundSenderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iput-object p2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;->val$mmsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;->this$1:Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;->val$mmsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    # invokes: Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->access$2000(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method
