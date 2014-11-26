.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "IccNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    const/4 v7, 0x3

    const/4 v4, 0x1

    const-wide/16 v5, 0xbb8

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    # setter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    :try_start_0
    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    if-ge v2, v4, :cond_1

    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$3;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    # setter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    # setter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    :try_start_1
    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    if-ge v2, v4, :cond_4

    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$10;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$10;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$12;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$12;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$11;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$11;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_5
    # setter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$14;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$14;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    # setter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    :try_start_3
    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    if-ge v2, v4, :cond_7

    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$15;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$15;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$17;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$17;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    :try_start_4
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$16;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$16;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :cond_8
    # setter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$19;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$19;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
