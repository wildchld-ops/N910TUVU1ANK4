.class Lcom/samsung/android/toolbox/TwToolBoxViewer$2;
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

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$2;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$2;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxViewer;->updateVisibility()V
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$2;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->twUpdateToolBox()V

    :cond_0
    return-void
.end method
