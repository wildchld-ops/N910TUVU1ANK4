.class Lcom/android/mms/oem/AutoSendingTestActivity$6;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/oem/AutoSendingTestActivity;->startSendMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$sendReq:Lcom/google/android/mms/pdu/SendReq;

.field final synthetic val$threadID:J


# direct methods
.method constructor <init>(Lcom/android/mms/oem/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    iput-object p2, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->val$mmsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-object p4, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iput-wide p5, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->val$threadID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v0}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$1500(Lcom/android/mms/oem/AutoSendingTestActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->val$mmsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v3}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$1500(Lcom/android/mms/oem/AutoSendingTestActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-wide v5, p0, Lcom/android/mms/oem/AutoSendingTestActivity$6;->val$threadID:J

    # invokes: Lcom/android/mms/oem/AutoSendingTestActivity;->sendMmsWorker(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V
    invoke-static/range {v0 .. v6}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$1600(Lcom/android/mms/oem/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V

    return-void
.end method
