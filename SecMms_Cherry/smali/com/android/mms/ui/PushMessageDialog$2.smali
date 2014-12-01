.class Lcom/android/mms/ui/PushMessageDialog$2;
.super Ljava/lang/Object;
.source "PushMessageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PushMessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PushMessageDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PushMessageDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/PushMessageDialog$2;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PushMessageDialog$2;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    # getter for: Lcom/android/mms/ui/PushMessageDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/PushMessageDialog;->access$000(Lcom/android/mms/ui/PushMessageDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/PushMessageDialog$2;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    # invokes: Lcom/android/mms/ui/PushMessageDialog;->processNextMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/PushMessageDialog;->access$100(Lcom/android/mms/ui/PushMessageDialog;)V

    return-void
.end method
