.class Lcom/android/mms/spam/SetupSpamNumberList$10;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$10;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$10;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListContextMenu:Landroid/view/ContextMenu;
    invoke-static {v1, p1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2002(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    if-nez p3, :cond_1

    const-string v1, "Mms/SetupSpamNumberList"

    const-string v2, "menuInfo is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$10;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget v1, v1, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v1, :cond_0

    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$10;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    # setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1402(Lcom/android/mms/spam/SetupSpamNumberList;I)I

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$10;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$10;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1400(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V

    goto :goto_0
.end method
