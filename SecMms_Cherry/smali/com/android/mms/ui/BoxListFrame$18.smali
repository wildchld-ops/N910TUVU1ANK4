.class Lcom/android/mms/ui/BoxListFrame$18;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->setViewbyModeLayout()V
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

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$18;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$18;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$18;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mViewBySelectorAdapter:Lcom/android/mms/ui/ViewBySelectorAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$4400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/ViewBySelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/ViewBySelectorAdapter;->buttonToCommand(I)I

    move-result v1

    # invokes: Lcom/android/mms/ui/BoxListFrame;->startMsgListViewByQuery(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;I)V

    return-void
.end method
