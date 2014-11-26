.class Lcom/android/mms/ui/MessageUtils$13$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$13;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$13;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$13$1;->this$0:Lcom/android/mms/ui/MessageUtils$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$13$1;->this$0:Lcom/android/mms/ui/MessageUtils$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$13$1;->this$0:Lcom/android/mms/ui/MessageUtils$13;

    iget-object v1, v1, Lcom/android/mms/ui/MessageUtils$13;->val$readReportDataMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$13$1;->this$0:Lcom/android/mms/ui/MessageUtils$13;

    iget v2, v2, Lcom/android/mms/ui/MessageUtils$13;->val$status:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$13$1;->this$0:Lcom/android/mms/ui/MessageUtils$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$13;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$13$1;->this$0:Lcom/android/mms/ui/MessageUtils$13;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$13;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
