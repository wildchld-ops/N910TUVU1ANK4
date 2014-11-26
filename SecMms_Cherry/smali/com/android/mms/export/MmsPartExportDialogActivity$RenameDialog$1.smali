.class Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog$1;
.super Ljava/lang/Object;
.source "MmsPartExportDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->setupDialogView(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog$1;->this$0:Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog$1;->this$0:Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;

    # invokes: Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->hideInputMethod()V
    invoke-static {v0}, Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;->access$000(Lcom/android/mms/export/MmsPartExportDialogActivity$RenameDialog;)V

    :cond_0
    return-void
.end method
