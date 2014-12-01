.class Lcom/android/mms/ui/ComposeMessageFragment$158;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$158;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$158;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13802(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$158;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13902(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
