.class Lcom/android/mms/data/WorkingMessage$3;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncSendMms(Lcom/android/mms/data/Conversation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$priority:I

.field final synthetic val$sendReq:Lcom/google/android/mms/pdu/SendReq;

.field final synthetic val$sendSimSlot:I

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;

.field final synthetic val$textOnly:Z


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;IZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$3;->val$mmsUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/mms/data/WorkingMessage$3;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-object p6, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iput p7, p0, Lcom/android/mms/data/WorkingMessage$3;->val$priority:I

    iput-boolean p8, p0, Lcom/android/mms/data/WorkingMessage$3;->val$textOnly:Z

    iput p9, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendSimSlot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$mmsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$3;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$3;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iget v6, p0, Lcom/android/mms/data/WorkingMessage$3;->val$priority:I

    iget-boolean v7, p0, Lcom/android/mms/data/WorkingMessage$3;->val$textOnly:Z

    iget v8, p0, Lcom/android/mms/data/WorkingMessage$3;->val$sendSimSlot:I

    # invokes: Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;IZI)V
    invoke-static/range {v0 .. v8}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;IZI)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    return-void
.end method
