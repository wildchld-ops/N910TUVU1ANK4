.class Lcom/android/mms/ui/SmsViewerActivity$6;
.super Ljava/lang/Object;
.source "SmsViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsViewerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewerActivity;

.field final synthetic val$eventTime:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsViewerActivity;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity$6;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/SmsViewerActivity$6;->val$eventTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$6;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity$6;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    # getter for: Lcom/android/mms/ui/SmsViewerActivity;->startX:I
    invoke-static {v1}, Lcom/android/mms/ui/SmsViewerActivity;->access$600(Lcom/android/mms/ui/SmsViewerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity$6;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    # getter for: Lcom/android/mms/ui/SmsViewerActivity;->endX:I
    invoke-static {v2}, Lcom/android/mms/ui/SmsViewerActivity;->access$700(Lcom/android/mms/ui/SmsViewerActivity;)I

    move-result v2

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity$6;->val$eventTime:J

    # invokes: Lcom/android/mms/ui/SmsViewerActivity;->flickMessage(IIJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/SmsViewerActivity;->access$800(Lcom/android/mms/ui/SmsViewerActivity;IIJ)V

    return-void
.end method
