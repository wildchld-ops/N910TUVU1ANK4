.class Lcom/android/mms/ui/TransferContentActivity$3;
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

    iput-object p1, p0, Lcom/android/mms/ui/TransferContentActivity$3;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/mms/ui/TransferContentActivity$3;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
