.class Lcom/android/mms/ui/CMASDialog$1;
.super Ljava/lang/Object;
.source "CMASDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog$1;->this$0:Lcom/android/mms/ui/CMASDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog$1;->this$0:Lcom/android/mms/ui/CMASDialog;

    # getter for: Lcom/android/mms/ui/CMASDialog;->mStatusbarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog;->access$000(Lcom/android/mms/ui/CMASDialog;)Landroid/app/StatusBarManager;

    move-result-object v1

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog$1;->this$0:Lcom/android/mms/ui/CMASDialog;

    # getter for: Lcom/android/mms/ui/CMASDialog;->mStatusbarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog;->access$000(Lcom/android/mms/ui/CMASDialog;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->cancelCmasVibrator()V

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->releaseMediaPlayer()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
