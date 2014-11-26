.class Lcom/android/phone/PhotoringGuide$1;
.super Landroid/os/Handler;
.source "PhotoringGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhotoringGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoringGuide;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoringGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoringGuide$1;->this$0:Lcom/android/phone/PhotoringGuide;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/android/phone/PhotoringGuide$1;->this$0:Lcom/android/phone/PhotoringGuide;

    # getter for: Lcom/android/phone/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/PhotoringGuide;->access$000(Lcom/android/phone/PhotoringGuide;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoringGuide$1;->this$0:Lcom/android/phone/PhotoringGuide;

    # getter for: Lcom/android/phone/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/PhotoringGuide;->access$000(Lcom/android/phone/PhotoringGuide;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoringGuide$1;->this$0:Lcom/android/phone/PhotoringGuide;

    # getter for: Lcom/android/phone/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/PhotoringGuide;->access$000(Lcom/android/phone/PhotoringGuide;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/PhotoringGuide$1;->this$0:Lcom/android/phone/PhotoringGuide;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/PhotoringGuide;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/PhotoringGuide;->access$002(Lcom/android/phone/PhotoringGuide;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhotoringGuide$1;->this$0:Lcom/android/phone/PhotoringGuide;

    # getter for: Lcom/android/phone/PhotoringGuide;->tv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/PhotoringGuide;->access$200(Lcom/android/phone/PhotoringGuide;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhotoringGuide$1;->this$0:Lcom/android/phone/PhotoringGuide;

    # getter for: Lcom/android/phone/PhotoringGuide;->s:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/PhotoringGuide;->access$100(Lcom/android/phone/PhotoringGuide;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
