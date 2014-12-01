.class Landroid/webkitsec/WebViewClassic$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;

.field final synthetic val$resumeMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$2;->this$0:Landroid/webkitsec/WebViewClassic;

    iput-object p2, p0, Landroid/webkitsec/WebViewClassic$2;->val$resumeMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$2;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$3200(Landroid/webkitsec/WebViewClassic;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$2;->val$resumeMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$2;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$3202(Landroid/webkitsec/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$2;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mSavePasswordDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$3302(Landroid/webkitsec/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
