.class Lcom/android/launcher2/CreateFolderDialog$6;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$viewToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/content/res/Resources;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$6;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iput-object p2, p0, Lcom/android/launcher2/CreateFolderDialog$6;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/launcher2/CreateFolderDialog$6;->val$viewToast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1    # Landroid/view/View;

    const/4 v9, 0x1

    const-wide/high16 v7, 0x3ff8000000000000L

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$6;->val$res:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$6;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v3, v3, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x3

    :goto_0
    const/4 v3, 0x4

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$6;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v3, v3, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v9

    int-to-double v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog$6;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v1, v3

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$6;->val$viewToast:Landroid/widget/Toast;

    const/16 v4, 0x35

    invoke-virtual {v3, v4, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$6;->val$viewToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v9

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v7

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog$6;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v0, v3

    goto :goto_0
.end method
