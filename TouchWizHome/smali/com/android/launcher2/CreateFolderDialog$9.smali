.class Lcom/android/launcher2/CreateFolderDialog$9;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$9;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # Landroid/widget/TextView;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne v1, p2, :cond_0

    sput-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$9;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog$9;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v2, v2, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    # invokes: Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V
    invoke-static {v1, v2}, Lcom/android/launcher2/CreateFolderDialog;->access$400(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
