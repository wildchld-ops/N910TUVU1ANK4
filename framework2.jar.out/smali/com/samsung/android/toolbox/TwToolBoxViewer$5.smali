.class Lcom/samsung/android/toolbox/TwToolBoxViewer$5;
.super Landroid/database/ContentObserver;
.source "TwToolBoxViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxViewer;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1    # Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    iget-object v3, v3, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "toolbox_earphones_only"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesOnly:Z
    invoke-static {v2, v0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$502(Lcom/samsung/android/toolbox/TwToolBoxViewer;Z)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxViewer;->updateVisibility()V
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
