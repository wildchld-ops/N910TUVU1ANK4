.class Lcom/android/settings/applications/UninstallMultipleScreen$2;
.super Landroid/os/Handler;
.source "UninstallMultipleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/UninstallMultipleScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$500(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$2;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/settings/applications/UninstallMultipleScreen;->UninstallPackages(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$600(Lcom/android/settings/applications/UninstallMultipleScreen;Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
