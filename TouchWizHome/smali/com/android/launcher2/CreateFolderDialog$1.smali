.class Lcom/android/launcher2/CreateFolderDialog$1;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CreateFolderDialog;
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

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CreateFolderDialog;->getFolderColorByView(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v1

    # setter for: Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;
    invoke-static {v0, v1}, Lcom/android/launcher2/CreateFolderDialog;->access$002(Lcom/android/launcher2/CreateFolderDialog;Lcom/android/launcher2/Folder$FolderColor;)Lcom/android/launcher2/Folder$FolderColor;

    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    # getter for: Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;
    invoke-static {v1}, Lcom/android/launcher2/CreateFolderDialog;->access$000(Lcom/android/launcher2/CreateFolderDialog;)Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CreateFolderDialog;->setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V

    return-void
.end method
