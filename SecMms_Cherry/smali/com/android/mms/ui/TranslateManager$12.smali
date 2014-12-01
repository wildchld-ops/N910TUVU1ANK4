.class Lcom/android/mms/ui/TranslateManager$12;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TranslateManager;->showNoTranslateTextDialog(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TranslateManager$12;->this$0:Lcom/android/mms/ui/TranslateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$12;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/TranslateManager;->access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$12;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/TranslateManager;->access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    return-void
.end method
