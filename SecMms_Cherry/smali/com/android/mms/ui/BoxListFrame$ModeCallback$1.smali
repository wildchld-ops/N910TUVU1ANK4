.class Lcom/android/mms/ui/BoxListFrame$ModeCallback$1;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame$ModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/BoxListFrame$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame$ModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback$1;->this$1:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback$1;->this$1:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->finishMultiSelectMode()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback$1;->this$1:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->setListTitle()V
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$3800(Lcom/android/mms/ui/BoxListFrame;)V

    return-void
.end method
