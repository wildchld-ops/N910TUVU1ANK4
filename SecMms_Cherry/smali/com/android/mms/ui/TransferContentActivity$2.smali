.class Lcom/android/mms/ui/TransferContentActivity$2;
.super Ljava/lang/Object;
.source "TransferContentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TransferContentActivity;->creatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TransferContentActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TransferContentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TransferContentActivity$2;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/ui/TransferContentActivity$2;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    # getter for: Lcom/android/mms/ui/TransferContentActivity;->mWhichButton:I
    invoke-static {v0}, Lcom/android/mms/ui/TransferContentActivity;->access$000(Lcom/android/mms/ui/TransferContentActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/TransferContentActivity$2;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/TransferContentActivity;->sendIntentToLauncherActivity(Ljava/util/ArrayList;Z)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TransferContentActivity$2;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    # invokes: Lcom/android/mms/ui/TransferContentActivity;->handleIntentRequsetParticipant()V
    invoke-static {v0}, Lcom/android/mms/ui/TransferContentActivity;->access$100(Lcom/android/mms/ui/TransferContentActivity;)V

    goto :goto_0
.end method
