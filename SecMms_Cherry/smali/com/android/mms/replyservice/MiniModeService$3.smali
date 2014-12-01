.class Lcom/android/mms/replyservice/MiniModeService$3;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/MiniModeService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$3;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-ne p2, v3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$3;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->lastKeyCode:I
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$600(Lcom/android/mms/replyservice/MiniModeService;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$3;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$700(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$3;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # invokes: Lcom/android/mms/replyservice/MiniModeService;->handleClose(I)V
    invoke-static {v1, v2}, Lcom/android/mms/replyservice/MiniModeService;->access$000(Lcom/android/mms/replyservice/MiniModeService;I)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$3;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v1, p3}, Lcom/android/mms/replyservice/MiniModeService;->access$702(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$3;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->lastKeyCode:I
    invoke-static {v1, p2}, Lcom/android/mms/replyservice/MiniModeService;->access$602(Lcom/android/mms/replyservice/MiniModeService;I)I

    return v0
.end method
