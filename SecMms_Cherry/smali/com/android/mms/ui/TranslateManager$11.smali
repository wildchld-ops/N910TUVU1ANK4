.class Lcom/android/mms/ui/TranslateManager$11;
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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateManager;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TranslateManager$11;->this$0:Lcom/android/mms/ui/TranslateManager;

    iput-object p2, p0, Lcom/android/mms/ui/TranslateManager$11;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$11;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/TranslateManager;->access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$11;->val$intent:Landroid/content/Intent;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
