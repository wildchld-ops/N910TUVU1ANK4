.class Lcom/android/mms/ui/ComposeMessageFragment$145$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$145;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$145;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$145;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$145$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$145;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const v3, 0x7f0c002e

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$145$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$145;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$145;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$145$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$145;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$145;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$145$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$145;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$145;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
