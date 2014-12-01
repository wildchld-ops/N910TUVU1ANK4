.class Lcom/android/launcher2/CreateFolderDialog$5;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CreateFolderDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CreateFolderDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    # getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    # getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    # getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, v1, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    # getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    # getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, v1, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method
