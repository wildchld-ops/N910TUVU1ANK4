.class final Lcom/android/server/am/MultiWindowPolicy$H;
.super Landroid/os/Handler;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_CLOSE_PENWINDOW:I = 0x2

.field private static final MSG_MINIMIZE_ALL:I = 0x1

.field private static final MSG_SHOW_TOAST_MAXPENWINDOW:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    const/4 v7, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/MultiWindowPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MultiWindowPolicy"

    const-string v2, "MSG_MINIMIZE_ALL"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MultiWindowPolicy;->minimizeAll(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/MultiWindowPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MultiWindowPolicy"

    const-string v2, "MSG_CLOSE_PENWINDOW"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowPolicy;->closePenWindow()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/MultiWindowPolicy;->access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030128

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/MultiWindowPolicy;->access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040bf0

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowPolicy;->access$200(Lcom/android/server/am/MultiWindowPolicy;)Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/am/MultiWindowPolicy;->access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getMaxPenWindow(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
