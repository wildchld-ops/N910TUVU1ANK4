.class Lcom/android/settings/TermsAndConditionActivity$1;
.super Landroid/os/Handler;
.source "TermsAndConditionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TermsAndConditionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TermsAndConditionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/TermsAndConditionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TermsAndConditionActivity$1;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TermsAndConditionActivity$1;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    # getter for: Lcom/android/settings/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/TermsAndConditionActivity;->access$000(Lcom/android/settings/TermsAndConditionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TermsAndConditionActivity$1;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    # getter for: Lcom/android/settings/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/TermsAndConditionActivity;->access$000(Lcom/android/settings/TermsAndConditionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/TermsAndConditionActivity$1;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    iget-object v1, p0, Lcom/android/settings/TermsAndConditionActivity$1;->this$0:Lcom/android/settings/TermsAndConditionActivity;

    # getter for: Lcom/android/settings/TermsAndConditionActivity;->s:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/TermsAndConditionActivity;->access$100(Lcom/android/settings/TermsAndConditionActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/TermsAndConditionActivity;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/TermsAndConditionActivity;->access$200(Lcom/android/settings/TermsAndConditionActivity;Ljava/lang/String;)V

    return-void
.end method
