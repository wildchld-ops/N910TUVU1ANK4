.class Lcom/android/mms/ui/ManageSDMessages$ModeCallback$1;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSDMessages$ModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$2100(Lcom/android/mms/ui/ManageSDMessages;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$2100(Lcom/android/mms/ui/ManageSDMessages;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
