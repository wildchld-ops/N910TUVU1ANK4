.class Lcom/android/mms/ui/BoxListFrame$3;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$3;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$3;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    # invokes: Lcom/android/mms/ui/BoxListFrame;->updateList(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;I)V

    const/4 v0, 0x1

    return v0
.end method
