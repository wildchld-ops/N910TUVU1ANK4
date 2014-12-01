.class Lcom/android/mms/ui/BoxListFrame$2;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->updateFolderListActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$2;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$2;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$2;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->setPopMenuItemTitle()V
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$300(Lcom/android/mms/ui/BoxListFrame;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$2;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
